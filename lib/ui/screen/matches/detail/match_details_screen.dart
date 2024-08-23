import 'package:cached_network_image/cached_network_image.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/api/matches/matchResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constants.dart';
import 'package:football_premier_league/common/dart/extension/datetime_extension.dart';
import 'package:football_premier_league/common/dart/extension/match_status_translation.dart';
import 'package:football_premier_league/common/dart/extension/team_name_translation.dart';
import 'package:football_premier_league/repository/matches/matchRepository.dart';
import 'package:football_premier_league/ui/widget/customMatchTable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MatchDetailsScreen extends HookConsumerWidget {
  const MatchDetailsScreen({super.key, required this.matchId});

  final int matchId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchRepository = ref.watch(matchRepositoryProvider);
    final matchFuture = useState<Future<MatchResponse>?>(null);

    useEffect(() {
      matchFuture.value = matchRepository.getMatch(matchId: matchId);
      return null;
    }, []);

    final matchSnapshot = useFuture(matchFuture.value);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: Text(
          '경기내역',
          style: context.textTheme.bodyLarge,
        ),
      ),
      body: matchSnapshot.connectionState == ConnectionState.waiting
          ? const Center(
        child: CircularProgressIndicator(
          color: AppColors.primaryColor,
        ),
      )
          : matchSnapshot.hasError
          ? Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            '${matchSnapshot.data?.getErrorMessage()}',
            style: const TextStyle(color: Colors.red),
          ),
        ),
      )
          : matchSnapshot.hasData && matchSnapshot.data!.matches.isNotEmpty
          ? Column(
        children: [
          // 시즌 경기 수 및 총 득점 테이블
          Flexible(
            flex: 1,
            child: CustomMatchTable(matchSnapshot: matchSnapshot),
          ),

          /** 밑의 ListView는 위의 경기수의 데이터와 일치하지 않아서 제거 **/
          // Flexible(
          //   flex: 3,
          //   child: ListView.builder(
          //     itemCount: matchSnapshot.data!.matches.length,
          //     itemBuilder: (context, index) {
          //       final match = matchSnapshot.data!.matches[index];
          //
          //       Color textStatusColor = Colors.white;
          //       Color boxStatusColor = Colors.grey;
          //
          //       if (match.status == "FINISHED") {
          //         boxStatusColor = AppColors.primaryColor;
          //         textStatusColor = Colors.white;
          //       } else if (match.status == "TIMED" ||
          //           match.status == 'SCHEDULED') {
          //         boxStatusColor = AppColors.grey10;
          //         textStatusColor = Colors.black;
          //       } else if (match.status == "LIVE" ||
          //           match.status == 'IN_PLAY') {
          //         boxStatusColor = AppColors.activate;
          //         textStatusColor = Colors.white;
          //       } else if (match.status == "PAUSED") {
          //         boxStatusColor = AppColors.black;
          //         textStatusColor = Colors.white;
          //       } else if (match.status == "POSTPONED") {
          //         boxStatusColor = AppColors.black;
          //         textStatusColor = Colors.white;
          //       } else if (match.status == "SUSPENDED") {
          //         boxStatusColor = AppColors.black;
          //         textStatusColor = Colors.white;
          //       } else if (match.status == "CANCELED") {
          //         boxStatusColor = AppColors.black;
          //         textStatusColor = Colors.white;
          //       } else {
          //         boxStatusColor = AppColors.grey10;
          //         textStatusColor = Colors.black;
          //       }
          //       return Card(
          //         elevation: 0.1,
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(8.0),
          //         ),
          //         margin: const EdgeInsets.symmetric(
          //           vertical: 16.0,
          //           horizontal: 16.0,
          //         ),
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               left: 16, right: 16, bottom: 16),
          //           child: Column(
          //             crossAxisAlignment:
          //             CrossAxisAlignment.center,
          //             children: [
          //               Row(
          //                 mainAxisAlignment:
          //                 MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   CachedNetworkImage(
          //                     imageUrl:
          //                     match.competition.emblem,
          //                     width: 50.0,
          //                     height: 50.0,
          //                     fit: BoxFit.cover,
          //                     placeholder: (context, url) =>
          //                     const CircularProgressIndicator(
          //                       color: AppColors.primaryColor,
          //                     ),
          //                     errorWidget:
          //                         (context, url, error) =>
          //                     const Icon(Icons.error),
          //                   ),
          //                   Text(
          //                     '${parseDateString(match.utcDate).formattedDate}',
          //                     style: Theme.of(context)
          //                         .textTheme
          //                         .bodySmall,
          //                   ),
          //                 ],
          //               ),
          //               Row(
          //                 mainAxisAlignment:
          //                 MainAxisAlignment.spaceAround,
          //                 children: [
          //                   Text(
          //                     '${match.homeTeam.name.teamNameTranslate.truncated}',
          //                     style: Theme.of(context)
          //                         .textTheme
          //                         .bodyLarge,
          //                   ),
          //                   Text(
          //                     '${match.awayTeam.name.teamNameTranslate.truncated}',
          //                     style: Theme.of(context)
          //                         .textTheme
          //                         .bodyLarge,
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(height: 12.0),
          //               Row(
          //                 mainAxisAlignment:
          //                 MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   CachedNetworkImage(
          //                     imageUrl:
          //                     match.homeTeam.crest,
          //                     width: 50.0,
          //                     height: 50.0,
          //                     fit: BoxFit.cover,
          //                     placeholder: (context, url) =>
          //                     const CircularProgressIndicator(
          //                       color:
          //                       AppColors.backgroundColor,
          //                     ),
          //                     errorWidget:
          //                         (context, url, error) =>
          //                     const Icon(Icons.error),
          //                   ),
          //                   Text(
          //                     '${match.score.fullTime.home ?? '-'} : ${match.score.fullTime.away ?? '-'}',
          //                     style: Theme.of(context)
          //                         .textTheme
          //                         .bodyLarge,
          //                   ),
          //                   CachedNetworkImage(
          //                     imageUrl:
          //                     match.awayTeam.crest,
          //                     width: 50.0,
          //                     height: 50.0,
          //                     fit: BoxFit.cover,
          //                     placeholder: (context, url) =>
          //                     const CircularProgressIndicator(
          //                       color:
          //                       AppColors.backgroundColor,
          //                     ),
          //                     errorWidget:
          //                         (context, url, error) =>
          //                     const Icon(Icons.error),
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(height: 12.0),
          //               DecoratedBox(
          //                 decoration: BoxDecoration(
          //                   color: boxStatusColor,
          //                   borderRadius:
          //                   BorderRadius.circular(32.0),
          //                 ),
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Text(
          //                     '${match.status.matchStatusTranslation}',
          //                     style: TextStyle(
          //                       color: textStatusColor,
          //                       fontSize: 12.0,
          //                       fontFamily:
          //                       GoogleFonts.nanumGothic()
          //                           .fontFamily,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      )
          : const Center(
        child: Text('No matches found'),
      ),
    );
  }
}