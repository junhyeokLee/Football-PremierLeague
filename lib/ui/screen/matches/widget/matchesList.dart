import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:football_premier_league/api/matches/matchesResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constant/assets.dart';
import 'package:football_premier_league/common/dart/extension/datetime_extension.dart';
import 'package:football_premier_league/common/dart/extension/match_status_translation.dart';
import 'package:football_premier_league/common/dart/extension/team_name_translation.dart';
import 'package:football_premier_league/network/dio_error.dart';
import 'package:football_premier_league/routing/appRoute.dart';
import 'package:football_premier_league/ui/widget/customCalendar.dart';
import 'package:football_premier_league/providers/calendar_provider.dart';
import 'package:football_premier_league/repository/matches/matchesRepository.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class MatchesList extends HookConsumerWidget {
  // 현재 날짜를 저장하는 변수
  final today = DateTime.now();

  // 캘린더의 시작일과 종료일을 설정하는 변수
  final firstDay = DateTime.utc(2000, 1, 1);
  final lastDay = DateTime.utc(2050, 12, 31);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Riverpod을 통해 선택된 날짜를 가져오거나 현재 날짜를 사용
    final selectedDate = ref.watch(selectedDateProvider) ?? today;
    // 선택된 날짜를 'yyyy-MM-dd' 형식의 문자열로 변환
    final dateFormat = selectedDate.formattedDate;

    final matchesRepository = ref.watch(matchesRepositoryProvider);
    final matchesFuture = useState<Future<MatchesResponse>?>(null);
    final calendarFormat = ref.watch(calendarFormatProvider);

    final scrollController = useScrollController();

    useEffect(() {
      // 스크롤 이벤트에 대한 리스너 추가
      void listener() {
        if (scrollController.position.pixels > 600 && calendarFormat == CalendarFormat.month) {
          // 리스트가 스크롤되고, 현재 형식이 month라면 week으로 변경
          ref.read(calendarFormatProvider.notifier).state = CalendarFormat.week;
        }
      }
      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener); // 리스너 정리
    }, [scrollController, calendarFormat]);

    // dateFormat이 변경될 때마다 새로운 Future를 생성
    useEffect(() {
      matchesFuture.value = matchesRepository.fetchMatches(
        startDate: dateFormat,
        endDate: dateFormat,
      );
      return null;
    }, [dateFormat]);

    // Future의 상태를 추적하는 Hook
    final matchesSnapshot = useFuture(matchesFuture.value);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor, // 배경 색상 설정
      body: RefreshIndicator(
        color: AppColors.primaryColor, // 새로 고침 인디케이터의 색상 설정
        onRefresh: () async {
          // 새로 고침 시 Future를 새로 설정하여 데이터 새로 요청
          matchesFuture.value = matchesRepository.fetchMatches(
            startDate: dateFormat,
            endDate: dateFormat,
          );
          await matchesFuture.value; // 새로운 Future가 완료될 때까지 대기
        },
        child: Column(
          children: [
            // CustomCalendar 위젯을 사용하여 캘린더 표시
            CustomCalendar(
              firstDay: firstDay,
              lastDay: lastDay,
            ),
            const SizedBox(height: 8.0), // 위젯 간의 간격 설정
            Expanded(
              // Future의 상태에 따라 다른 위젯을 표시
              child: matchesSnapshot.connectionState == ConnectionState.waiting
                  ? const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor, // 로딩 중 표시 색상 설정
                ),
              )
                  : matchesSnapshot.hasError
                  ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    matchesSnapshot.error is DioError
                        ? getErrorMessage(matchesSnapshot.error as DioError)
                        : getErrorMessage(matchesSnapshot.error!), // 여기서 error는 Object 타입
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              )
                  : matchesSnapshot.hasData &&
                  matchesSnapshot.data!.matches.isNotEmpty
                  ? ListView.builder(
                controller: scrollController, // ScrollController를 ListView에 연결
                itemCount: matchesSnapshot.data!.matches.length, // 매치 데이터 수
                itemBuilder: (context, index) {
                  final match = matchesSnapshot.data!.matches[index];

                   Color textStatusColor = Colors.white;
                   Color boxStatusColor = Colors.grey;

                  if (match.status == "FINISHED") {
                    boxStatusColor = AppColors.primaryColor;
                    textStatusColor = Colors.white;
                  } else if(match.status == "TIMED" || match.status == 'SCHEDULED') {
                    boxStatusColor = AppColors.grey10;
                    textStatusColor = Colors.black;
                  } else if(match.status == "LIVE" || match.status == 'IN_PLAY') {
                    boxStatusColor = AppColors.activate;
                    textStatusColor = Colors.white;
                  } else if(match.status == "PAUSED") {
                    boxStatusColor = AppColors.black;
                    textStatusColor = Colors.white;
                  }else if(match.status == "POSTPONED") {
                    boxStatusColor = AppColors.black;
                    textStatusColor = Colors.white;
                  }else if(match.status == "SUSPENDED") {
                    boxStatusColor = AppColors.black;
                    textStatusColor = Colors.white;
                  }
                  else if(match.status == "CANCELED") {
                    boxStatusColor = AppColors.black;
                    textStatusColor = Colors.white;
                  }
                  else {
                    boxStatusColor = AppColors.grey10;
                    textStatusColor = Colors.black;
                  }

                  return InkWell(
                    onTap: () {
                      context.goNamed(
                        AppRoute.match.name,
                        pathParameters: {'id': match.id.toString()},
                      );
                    },
                    child: Card(
                      elevation: 0.1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0), // 카드의 모서리를 둥글게 설정
                      ),
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0, // 카드의 수직 간격
                        horizontal: 16.0, // 카드의 수평 간격
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 16), // 카드 내부의 패딩
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: match.competition.emblem,
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => const CircularProgressIndicator(
                                    color: AppColors.primaryColor,
                                  ), // 로딩 중 표시
                                  errorWidget: (context, url, error) => const Icon(Icons.error), // 에러 발생 시 표시
                                ),
                                Text(
                                  '${parseDateString(match.utcDate).formattedDate}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ), // 경기 날짜
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,

                              children: [
                                Text(
                                  '${match.homeTeam.name.teamNameTranslate.truncated}', // 팀명 표시
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  '${match.awayTeam.name.teamNameTranslate.truncated}', // 팀명 표시
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                            const SizedBox(height: 12.0), // 텍스트 간의 간격
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: match.homeTeam.crest,
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => const CircularProgressIndicator(
                                    color: AppColors.backgroundColor,
                                  ), // 로딩 중 표시
                                  errorWidget: (context, url, error) => const Icon(Icons.error), // 에러 발생 시 표시
                                ),
                                Text(
                                  '${match.score.fullTime.home ?? '-'} : ${match.score.fullTime.away ?? '-'}',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ), // 경기 스코어
                                CachedNetworkImage(
                                  imageUrl: match.awayTeam.crest,
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => const CircularProgressIndicator(
                                    color: AppColors.backgroundColor,
                                  ), // 로딩 중 표시
                                  errorWidget: (context, url, error) => const Icon(Icons.error), // 에러 발생 시 표시
                                ),
                              ],
                            ),
                            const SizedBox(height: 12.0), // 텍스트 간의 간격
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: boxStatusColor, // 상태 색상 설정
                                borderRadius: BorderRadius.circular(32.0), // 상태 색상을 둥글게 설정
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${match.status.matchStatusTranslation}',
                                  style: TextStyle(
                                    color: textStatusColor,
                                    fontSize: 12.0,
                                    fontFamily: GoogleFonts.nanumGothic().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ), // 경기 상태
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ) : Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AspectRatio(
                      aspectRatio: 3, // 이미지의 비율 설정
                      child: Image.asset(
                        Assets.empty_field, // 플레이어 이미지 표시
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 24), // 텍스트와 이미지 간의 간격
                    const Text(
                      'No matches found for the selected date.', // 데이터가 없을 때 메시지
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}