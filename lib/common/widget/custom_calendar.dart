import 'package:flutter/material.dart';
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

    // 선택된 년도가 변경될 때마다 캘린더 페이지 이동을 처리
    ref.listen<int?>(selectedYearProvider, (previousYear, newYear) {
      if (newYear != null) {
        final newFocusedDate = DateTime(newYear, DateTime.now().month, DateTime.now().day);
        ref.read(focusedDateProvider.notifier).state = newFocusedDate;
      }
    });
    // 오늘 날짜를 선택된 날짜로 설정 (빌드가 완료된 후에 상태를 업데이트)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final today = DateTime.now();
      if (selectedDate == null) {
        ref.read(selectedDateProvider.notifier).state = today;
        debugPrint("Initial selectedDate set to today: $today");
      }
    });

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8.0),
      child: TableCalendar(
        firstDay: firstDay,
        lastDay: lastDay,
        headerVisible: false,
        rangeSelectionMode: RangeSelectionMode.toggledOff,
        focusedDay: focusedDate ?? DateTime.now(),
        selectedDayPredicate: (day) => isSameDay(selectedDate, day),
        rangeStartDay: rangeStartDate,
        rangeEndDay: rangeEndDate,
        calendarFormat: calendarFormat,
        onDaySelected: (selectedDay, focusedDay) {
          selectedDay = DateTime(selectedDay.year, selectedDay.month, selectedDay.day);
          focusedDay = DateTime(focusedDay.year, focusedDay.month, focusedDay.day);
          ref.read(selectedDateProvider.notifier).state = selectedDay;
          ref.read(focusedDateProvider.notifier).state = focusedDay;
          ref.read(rangeStartProvider.notifier).state = null;
          ref.read(rangeEndProvider.notifier).state = null;
          debugPrint("selectedDay: $selectedDay, focusedDay: $focusedDay");
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
              offset: Offset(0, -8.0),  // y축으로 -8.0만큼 이동시켜 위로 올림
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
              offset: Offset(0, -8.0),  // y축으로 -8.0만큼 이동시켜 위로 올림
              child: Center(
                child: Text(
                  '${day.month}/${day.day}',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                  ),
                ),
              ),
            );
          },
          outsideBuilder: (context, day, _) {  // 밖의 날짜에도 스타일 적용
            return Transform.translate(
              offset: Offset(0, -8.0),  // y축으로 -8.0만큼 이동시켜 위로 올림
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
              offset: Offset(0, -8.0),  // y축으로 -8.0만큼 이동시켜 위로 올림
              child: Container(
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
        daysOfWeekHeight: 48.0,
        availableCalendarFormats: const {
          CalendarFormat.month: '주',
          CalendarFormat.week: '월',
        },
        startingDayOfWeek: StartingDayOfWeek.monday,
      ),
    );
  }
}