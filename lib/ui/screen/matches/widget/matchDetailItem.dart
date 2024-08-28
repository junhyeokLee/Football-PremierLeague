import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:football_premier_league/common/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:football_premier_league/api/matches/matchResponse.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/dart/extension/match_status_translation.dart';
import 'package:football_premier_league/common/dart/extension/team_name_translation.dart';
import 'package:football_premier_league/common/dart/extension/datetime_extension.dart';
import 'package:football_premier_league/data/matches/matche.dart';

class MatchDetailItem extends StatelessWidget {
  final Match match;

  const MatchDetailItem({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 매치 상태에 따른 색상 설정
    Color textStatusColor = Colors.white;
    Color boxStatusColor = Colors.grey;

    if (match.status == "FINISHED") {
      boxStatusColor = AppColors.primaryColor;
    } else if (match.status == "TIMED" || match.status == 'SCHEDULED') {
      boxStatusColor = AppColors.grey10;
      textStatusColor = Colors.black;
    } else if (match.status == "LIVE" || match.status == 'IN_PLAY') {
      boxStatusColor = AppColors.activate;
    } else {
      boxStatusColor = AppColors.grey10;
      textStatusColor = Colors.black;
    }

    return Column(
      children: [
        Card(
          elevation: 0.1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16,top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '경기일 : ',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      '${parseDateString(match.utcDate).formattedDate}',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
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
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                    Text(
                      '${match.score.fullTime.home ?? '-'} : ${match.score.fullTime.away ?? '-'}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    CachedNetworkImage(
                      imageUrl: match.awayTeam.crest,
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const CircularProgressIndicator(
                        color: AppColors.backgroundColor,
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}