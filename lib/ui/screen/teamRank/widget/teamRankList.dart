import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:football_premier_league/api/standings/standingsResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constant/assets.dart';
import 'package:football_premier_league/common/dart/extension/datetime_extension.dart';
import 'package:football_premier_league/common/widget/custom_calendar.dart';
import 'package:football_premier_league/providers/calendar_provider.dart';
import 'package:football_premier_league/repository/standings/standingsRepository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamRankList extends HookConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final selectedYear = ref.watch(selectedYearProvider);
    // 선택된 날짜를 기준으로 매치 데이터를 가져오는 Future를 생성

    final standingsRepository = ref.watch(standingsRepositoryProvider);
    final standingsFuture = useState<Future<StandingsResponse>?>(null);

    // dateFormat이 변경될 때마다 새로운 Future를 생성
    useEffect(() {
      standingsFuture.value = standingsRepository.fetchStandings(
    season: selectedYear ?? DateTime.now().year);
    return null;
    }, [selectedYear]);

    // Future의 상태를 추적하는 Hook
    final standingsSnapshot = useFuture(standingsFuture.value);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor, // 배경 색상 설정
      body: RefreshIndicator(
        color: AppColors.primaryColor, // 새로 고침 인디케이터의 색상 설정
        onRefresh: () async {
          // 새로 고침 시 Future를 새로 설정하여 데이터 새로 요청
          standingsFuture.value = standingsRepository.fetchStandings(
              season: selectedYear ?? DateTime.now().year);
          await standingsFuture.value; // 새로운 Future가 완료될 때까지 대기
        },
        child: Column(
          children: [
            const SizedBox(height: 8.0), // 위젯 간의 간격 설정
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
                itemCount: standingsSnapshot.data!.standings.length, // 매치 데이터 수
                itemBuilder: (context, index) {
                  final standing = standingsSnapshot.data!.standings[index];
                  return Card(
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
      ),
    );
  }
}