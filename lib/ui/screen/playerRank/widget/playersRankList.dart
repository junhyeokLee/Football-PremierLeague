import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:football_premier_league/api/scorer/scorerResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constant/assets.dart';
import 'package:football_premier_league/common/dart/extension/player_name_translation.dart';
import 'package:football_premier_league/network/dio_error.dart';
import 'package:football_premier_league/providers/calendar_provider.dart';
import 'package:football_premier_league/repository/persons/playersRepository.dart';
import 'package:football_premier_league/routing/appRoute.dart';
import 'package:football_premier_league/ui/widget/customSearchField.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayersRankList extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedYear = ref.watch(selectedYearProvider);
    final playersRepository = ref.watch(playersRepositoryProvider);
    final scorersFuture = useState<Future<ScorerResponse>?>(null);

    // 검색어 상태 추가
    final searchQuery = useState<String>('');

    useEffect(() {
      scorersFuture.value = playersRepository.fetchTopScorer(
          season: selectedYear ?? DateTime.now().year);
      return null;
    }, [selectedYear]);

    final scorerSnapshot = useFuture(scorersFuture.value);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor, // 배경 색상 설정
      body: Column(
        children: [
          // 검색 필드 추가
          CustomSearchField(hintText: 'Search player...', searchQuery: searchQuery),
          Expanded(
            // Future의 상태에 따라 다른 위젯을 표시
            child: scorerSnapshot.connectionState == ConnectionState.waiting
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor, // 로딩 중 표시 색상 설정
                    ),
                  )
                : scorerSnapshot.hasError
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            scorerSnapshot.error is DioError
                                ? getErrorMessage(scorerSnapshot.error as DioError)
                                : getErrorMessage(scorerSnapshot.error!), // 여기서 error는 Object 타입
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                      )
                    : scorerSnapshot.hasData &&
                            scorerSnapshot.data!.scorers.isNotEmpty
                        ? ListView.builder(
                            itemCount: _getFilteredPlayers(scorerSnapshot.data!.scorers, searchQuery.value).length,
                            itemBuilder: (context, index) {
                              final filteredScorers = _getFilteredPlayers(
                                  scorerSnapshot.data!.scorers,
                                  searchQuery.value);
                              final scorer = filteredScorers[index];
                              // final scorerList =
                              //     scorerSnapshot.data!.scorers.toList();
                              // final scorer = scorerList[index];

                              return InkWell(
                                onTap: () {
                                  // 플레이어 상세 화면으로 이동
                                  context.goNamed(
                                    AppRoute.playerRankDetails.name,
                                    pathParameters: {
                                      'playerId': scorer.player.id.toString(),
                                      'playerName': scorer.player.name,
                                    },
                                  );
                                },
                                child: Container(
                                  color: Colors.white,
                                  margin: const EdgeInsets.symmetric(),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16,
                                        left: 16,
                                        right: 16), // 카드 내부의 패딩
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${index + 1}', // 순위 표시
                                              style: const TextStyle(
                                                color: AppColors.primaryColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                                width: 16), // 순위와 이미지 사이 간격
                                            CachedNetworkImage(
                                              imageUrl: scorer.team.crest,
                                              // 팀 로고 URL 사용
                                              width: 50.0,
                                              height: 50.0,
                                              fit: BoxFit.cover,
                                              placeholder: (context, url) =>
                                                  const CircularProgressIndicator(
                                                color: AppColors.primaryColor,
                                              ),
                                              // 로딩 중 표시
                                              errorWidget: (context, url,
                                                      error) =>
                                                  const Icon(
                                                      Icons.error), // 에러 발생 시 표시
                                            ),
                                            const SizedBox(width: 8),
                                            Expanded(
                                              child: Text(
                                                translatePlayerName(
                                                    scorer.player.name),
                                                // 여기에서 translateTeamName 호출
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Text('${scorer.goals} pts',
                                                style: context
                                                    .textTheme.labelMedium),
                                          ],
                                        ),
                                        SizedBox(height: 16),
                                        Container(
                                          height: 1,
                                          color: AppColors.grey10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        : Center(
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
    );
  }
}

// 필터링된 팀 리스트를 반환하는 메서드
List<dynamic> _getFilteredPlayers(List<dynamic> scorers, String query) {
  return scorers
      .where((scorer) => translatePlayerName(scorer.player.name)
      .toLowerCase()
      .contains(query.toLowerCase())) // 변환된 팀 이름으로 검색
      .toList();
}