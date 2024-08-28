import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constants.dart';
import 'package:football_premier_league/common/dart/extension/datetime_extension.dart';
import 'package:football_premier_league/common/dart/extension/match_status_translation.dart';
import 'package:football_premier_league/common/dart/extension/team_name_translation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:football_premier_league/data/matches/matche.dart';

class MatchItem extends StatelessWidget {
  const MatchItem({
    super.key,
    required this.match,
    required this.boxStatusColor,
    required this.textStatusColor,
  });

  final Match match;
  final Color boxStatusColor;
  final Color textStatusColor;

  @override
  Widget build(BuildContext context) {
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
    );
  }
}