import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:football_premier_league/api/standings/standingsResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constant/assets.dart';
import 'package:football_premier_league/common/dart/extension/team_name_translation.dart';
import 'package:football_premier_league/providers/calendar_provider.dart';
import 'package:football_premier_league/repository/standings/standingsRepository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamRankList extends HookConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final selectedYear = ref.watch(selectedYearProvider);

    final standingsRepository = ref.watch(standingsRepositoryProvider);
    final standingsFuture = useState<Future<StandingsResponse>?>(null);

    useEffect(() {
      standingsFuture.value = standingsRepository.fetchStandings(
          season: selectedYear ?? DateTime.now().year);
      return null;
    }, [selectedYear]);

    final standingsSnapshot = useFuture(standingsFuture.value);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor, // 배경 색상 설정
      body: Column(
        children: [
          Expanded(
            // Future의 상태에 따라 다른 위젯을 표시
            child: standingsSnapshot.connectionState == ConnectionState.waiting
                ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor, // 로딩 중 표시 색상 설정
              ),
            ) : standingsSnapshot.hasError ? Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '요청이 너무 많습니다 잠시만 기다려주세요.', // 에러 발생 시 에러 메시지 표시
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ) : standingsSnapshot.hasData && standingsSnapshot.data!.standings.isNotEmpty
                ? ListView.builder(
              itemCount: standingsSnapshot.data!.standings.where((standing) => standing.type == "TOTAL")
                  .expand((standing) => standing.table)
                  .length, // type이 TOTAL인 Standings의 table 리스트의 길이
              itemBuilder: (context, index) {
                // type이 "TOTAL"인 Standings 필터링 후, table 리스트 전체를 순회
                final filteredTables = standingsSnapshot.data!.standings
                    .where((standing) => standing.type == "TOTAL")
                    .expand((standing) => standing.table)
                    .toList();
                final table = filteredTables[index];

                return Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top:16,left: 16, right: 16), // 카드 내부의 패딩
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('${table.position}.', // 순위 표시
                              style: const TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8), // 순위와 이미지 사이 간격
                            CachedNetworkImage(
                              imageUrl: table.team.crest, // 팀 로고 URL 사용
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const CircularProgressIndicator(
                                color: AppColors.primaryColor,
                              ), // 로딩 중 표시
                              errorWidget: (context, url, error) => const Icon(Icons.error), // 에러 발생 시 표시
                            ),
                            const SizedBox(width: 8), // 이미지와 팀 이름 사이 간격
                            Expanded(
                              child: Text(
                                table.team.name.teamNameTranslate, // 팀 이름 표시
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Text(
                              '${table.points} pts', // 팀 점수 표시
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Container(height: 1,
                          color: AppColors.grey10,
                        ),
                      ],
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
    );
  }
}