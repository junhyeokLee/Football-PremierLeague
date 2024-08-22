import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:football_premier_league/api/matches/matchesResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/repository/matches/matchesRepository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/providers/calendar_provider.dart';

class CustomCalendar extends HookConsumerWidget {
  final DateTime firstDay;
  final DateTime lastDay;

  CustomCalendar({
    Key? key,
    required this.firstDay,
    required this.lastDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    final focusedDate = ref.watch(focusedDateProvider);
    final rangeStartDate = ref.watch(rangeStartProvider);
    final rangeEndDate = ref.watch(rangeEndProvider);
    final calendarFormat = ref.watch(calendarFormatProvider);
    final selectedYear = ref.watch(selectedYearProvider);
    final matchesRepository = ref.watch(matchesRepositoryProvider);
    final matchesFuture = useState<Future<MatchesResponse>?>(null);

    // dateFormat이 변경될 때마다 새로운 Future를 생성
    useEffect(() {
      final season = selectedYear?.toString() ?? DateTime.now().year.toString();
      matchesFuture.value = matchesRepository.fetchSeasonMatches(
        season: season,
      );
      return null;
    }, [selectedYear]);

    // selectedYear가 변경될 때마다 focusedDay 및 selectedDay 업데이트
    useEffect(() {
      if (selectedYear != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // focusedDate와 selectedDate가 null일 경우 기본값 설정
          final currentMonth = focusedDate?.month ?? 1;
          final currentDay = focusedDate?.day ?? 1;

          // selectedYear에 맞춰 새로운 날짜 생성
          final newFocusedDay = DateTime(selectedYear, currentMonth, currentDay);

          // 상태 업데이트
          ref.read(focusedDateProvider.notifier).state = newFocusedDay;
          ref.read(selectedDateProvider.notifier).state = newFocusedDay;
        });
      }
      return null;
    }, [selectedYear]);



    final matchesSnapshot = useFuture(matchesFuture.value);
    // 날짜에 대한 매치 수를 계산하는 함수
    int getMatchCount(DateTime day) {
      int matchCount = 0;
      if (matchesSnapshot.hasData) {
        final matchesList = matchesSnapshot.data?.matches;

        // matchesList를 순회하여 해당 날짜와 일치하는 매치 수 계산
        matchCount = matchesList?.where((match) {
          final matchDate = DateTime.parse(match.utcDate); // utcDate를 DateTime으로 변환
          return matchDate.year == day.year &&
              matchDate.month == day.month &&
              matchDate.day == day.day; // 날짜가 동일한지 확인
        }).length ?? 0; // null인 경우 0으로 초기화
      }
      return matchCount;
    }

    String? getMatchesStatus(DateTime day) {
      String? matchStatus = "";
      if (matchesSnapshot.hasData) {
        final matchesList = matchesSnapshot.data?.matches;

        // 특정 날짜에 해당하는 첫 번째 매치의 status를 반환하기 전에 리스트가 비어 있지 않은지 확인
        final filteredMatches = matchesList?.where((match) {
          final matchDate = DateTime.parse(match.utcDate);
          return matchDate.year == day.year &&
              matchDate.month == day.month &&
              matchDate.day == day.day;
        }).toList();

        // 리스트가 비어있지 않으면 첫 번째 매치의 상태를 가져옴
        if (filteredMatches != null && filteredMatches.isNotEmpty) {
          matchStatus = filteredMatches.first.status;
        }
      }
      return matchStatus;
    }

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 8.0), // 좌우 패딩만 설정
      // padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 0,bottom: 0),
      child: TableCalendar(
        firstDay: firstDay,
        lastDay: lastDay,
        // daysOfWeekHeight: 48.0, // 기본값보다 낮은 값으로 설정하여 간격을 줄임
        // rowHeight: 54.0, // 행의 높이를 줄여서 더 많은 날짜가 보이도록 함
        headerVisible: false,
        rangeSelectionMode: RangeSelectionMode.toggledOff,
        focusedDay: focusedDate ?? DateTime.now(),
        selectedDayPredicate: (day) => isSameDay(selectedDate, day),
        rangeStartDay: rangeStartDate,
        rangeEndDay: rangeEndDate,
        calendarFormat: calendarFormat,
        onDaySelected: (selectedDay, focusedDay) {
          if (selectedYear != null) {
            // selectedDay의 연도를 selectedYear로 변경
            selectedDay = DateTime(selectedYear, selectedDay.month, selectedDay.day);
            focusedDay = DateTime(selectedYear, focusedDay.month, focusedDay.day);
          } else {
            selectedDay = DateTime(DateTime.now().year, selectedDay.month, selectedDay.day);
            focusedDay = DateTime(DateTime.now().year, focusedDay.month, focusedDay.day);
          }
          // selectedDay = DateTime(selectedDay.year, selectedDay.month, selectedDay.day);
          // focusedDay = DateTime(focusedDay.year, focusedDay.month, focusedDay.day);
          ref.read(selectedDateProvider.notifier).state = selectedDay;
          ref.read(focusedDateProvider.notifier).state = focusedDay;
          ref.read(rangeStartProvider.notifier).state = null;
          ref.read(rangeEndProvider.notifier).state = null;
          debugPrint("선택한 날짜: $selectedDay, 포커스 된 날짜: $focusedDay");
        },
        onFormatChanged: (format) {
          if (calendarFormat != format) {
            ref.read(calendarFormatProvider.notifier).state = format;
          }
        },
        onPageChanged: (focusedDay) {
          ref.read(focusedDateProvider.notifier).state = focusedDay;
        },
        calendarBuilders: CalendarBuilders(
          selectedBuilder: (context, day, _) {
            return Transform.translate(
              offset: Offset(0, 0.0),  // y축으로 -8.0만큼 이동시켜 위로 올림
              child: Container(
                margin: const EdgeInsets.all(4.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Text(
                  '${day.month}/${day.day}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            );
          },
          defaultBuilder: (context, day, _) {
            bool isWeekend = day.weekday == DateTime.saturday ||
                day.weekday == DateTime.sunday;
            Color textColor;
            if (day.weekday == DateTime.saturday) {
              textColor = Colors.blue;
            } else if (isWeekend) {
              textColor = Colors.red;
            } else {
              textColor = Colors.black;
            }

            return Transform.translate(
              offset: Offset(0, 0.0),
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // 날짜 텍스트
                    Text(
                      '${day.month}/${day.day}',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                      ),
                    ),
                    // 매치 수가 0보다 큰 경우에만 뱃지 표시
                  ],
                ),
              ),
            );
          },
          markerBuilder: (context, day, events) {

            // 날짜에 대한 매치 수 계산
            final matchCount = getMatchCount(day);
            // 날짜에 대한 매치 상태 계산
            final matchStatus = getMatchesStatus(day);

            // 기본 마커 색상 설정
            Color markerColor = Colors.grey;
            Color textColor = Colors.black;
            // status에 따른 마커 색상 변경
            // 'TIMED': '경기예정',
            // 'SCHEDULED': '경기예정',
            // 'FINISHED': '경기종료',
            // 'LIVE' : '경기중',
            // 'IN_PLAY' : '경기중',
            // 'PAUSED' : '경기중지',
            // 'POSTPONED' : '경기연기',
            // 'SUSPENDED' : '경기중단',
            // 'CANCELED' : '경기취소',
            if (matchStatus == "FINISHED") {
              markerColor = AppColors.primarySelectedColor;
              textColor = Colors.white;
            } else if(matchStatus == "TIMED" || matchStatus == 'SCHEDULED') {
              markerColor = AppColors.grey10;
              textColor = Colors.black;
            } else if(matchStatus == "LIVE" || matchStatus == 'IN_PLAY') {
              markerColor = AppColors.activate;
              textColor = Colors.white;
            } else if(matchStatus == "PAUSED") {
              markerColor = AppColors.black;
              textColor = Colors.white;
            }else if(matchStatus == "POSTPONED") {
              markerColor = AppColors.black;
              textColor = Colors.white;
            }else if(matchStatus == "SUSPENDED") {
              markerColor = AppColors.black;
              textColor = Colors.white;
            }
            else if(matchStatus == "CANCELED") {
              markerColor = AppColors.black;
              textColor = Colors.white;
            }
            else {
              markerColor = AppColors.grey10;
              textColor = Colors.black;
            }
            if (matchCount > 0) {

              return Align(
                alignment: Alignment.bottomRight,  // 오른쪽 아래로 이동
                child: Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 2.0, bottom: 2.0), // 약간의 여백 추가
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: markerColor,
                  ),
                  child: Text(
                    '${matchCount}',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 11.0,
                    ),
                  ),
                ),
              );
            }
            return null;
          },
          outsideBuilder: (context, day, _) {  // 밖의 날짜에도 스타일 적용
            return Transform.translate(
              offset: Offset(0, 0.0),  // y축으로 -8.0만큼 이동시켜 위로 올림
              child: Center(
                child: Text(
                  '${day.month}/${day.day}',
                  style: TextStyle(
                    color: Colors.grey,  // 회색으로 빈 날짜 표시
                    fontSize: 14,
                  ),
                ),

              ),
            );
          },
          rangeStartBuilder: (context, day, focusedDay) {
            return Container(
              margin: const EdgeInsets.all(4.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.noteColor2,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text('${day.month}/${day.day}',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                ),
              ),
            );
          },
          rangeEndBuilder: (context, day, focusedDay) {
            return Container(
              margin: const EdgeInsets.all(4.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.noteColor2,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text('${day.month}/${day.day}',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                ),
              ),
            );
          },
          withinRangeBuilder: (context, day, focusedDay) {
            return Container(
              margin: const EdgeInsets.all(4.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.noteColor2.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text('${day.month}/${day.day}',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                ),
              ),
            );
          },
          todayBuilder: (context, day, _) {
            return Transform.translate(
              offset: Offset(0, 0.0),  // y축으로 -8.0만큼 이동시켜 위로 올림
              child: Container(
                margin: const EdgeInsets.all(4.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.black.withOpacity(0.1), // 오늘 날짜 배경 색상
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Text('${day.month}/${day.day}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                  ),
                ),
              ),
            );
          },
          dowBuilder: (context, day) {
            final englishText = DateFormat.E().format(day);
            String koreanText;
            switch (englishText) {
              case 'Mon':
                koreanText = '월';
                break;
              case 'Tue':
                koreanText = '화';
                break;
              case 'Wed':
                koreanText = '수';
                break;
              case 'Thu':
                koreanText = '목';
                break;
              case 'Fri':
                koreanText = '금';
                break;
              case 'Sat':
                koreanText = '토';
                break;
              case 'Sun':
                koreanText = '일';
                break;
              default:
                koreanText = '';
            }
            if (day.weekday == DateTime.sunday) {
              return Center(
                child: Text(
                  '$koreanText',
                  style: TextStyle(color: Colors.red, height: 0,fontSize: 14),
                ),
              );
            } else if (day.weekday == DateTime.saturday) {
              return Center(
                child: Text(
                  '$koreanText',
                  style: TextStyle(color: Colors.blue, height: 0,fontSize: 14),
                ),
              );
            } else {
              return Center(
                child: Text(
                  '$koreanText',
                  style: TextStyle(color: Colors.black, height: 0,fontSize: 14),
                ),
              );
            }
          },
        ),
        // daysOfWeekHeight: 48.0,
        availableCalendarFormats: const {
          CalendarFormat.month: '주',
          CalendarFormat.week: '월',
        },
        startingDayOfWeek: StartingDayOfWeek.monday,
      ),
    );
  }
}