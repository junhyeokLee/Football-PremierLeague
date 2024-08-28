import 'package:cached_network_image/cached_network_image.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:football_premier_league/api/matches/matchResponse.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/dart/extension/team_name_translation.dart';

class CustomMatchTable extends StatelessWidget {
  const CustomMatchTable({
    super.key,
    required this.matchSnapshot,
  });

  final AsyncSnapshot<MatchResponse> matchSnapshot;

  @override
  Widget build(BuildContext context) {
    if (matchSnapshot.data?.aggregates == null) {
      return const Center(child: Text('Aggregates data not available'));
    }

    String homeTeamCrest = "";
    String awayTeamCrest = "";

    if(matchSnapshot.data!.aggregates.homeTeam.name == matchSnapshot.data!.matches[0].homeTeam.name) {
      homeTeamCrest = matchSnapshot.data!.matches[0].homeTeam.crest;
    }else {
      homeTeamCrest = matchSnapshot.data!.matches[0].awayTeam.crest;
    }
    if(matchSnapshot.data!.aggregates.awayTeam.name == matchSnapshot.data!.matches[0].awayTeam.name) {
      awayTeamCrest = matchSnapshot.data!.matches[0].awayTeam.crest;
    }else {
      awayTeamCrest = matchSnapshot.data!.matches[0].homeTeam.crest;
    }

    return Container(
      height: 140, // 적절한 높이를 설정
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: DataTable2(
        columnSpacing: 12.0,
        dataRowHeight: 50.0,
        headingRowHeight: 40.0,
        bottomMargin: 16.0,
        border: TableBorder(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
          top: BorderSide(color: Colors.grey.withOpacity(0.5)),
          left: BorderSide(color: Colors.grey.withOpacity(0.5)),
          right: BorderSide(color: Colors.grey.withOpacity(0.5)),
          horizontalInside: BorderSide.none,
          verticalInside: BorderSide.none,
        ),
        columns: const [
          DataColumn2(
            label: Center(
              child: Text(
                '팀',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            fixedWidth: 200.0,
          ),
          DataColumn2(
            label: Center(
              child: Text(
                '승',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Center(
              child: Text(
                '패',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Center(
              child: Text(
                '무승부',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            size: ColumnSize.S,
          ),
        ],
        rows: [
          DataRow(
            color: WidgetStateProperty.all(Colors.white),
            cells: [
              DataCell(Center(
                child: Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: homeTeamCrest,
                      width: 32.0,
                      height: 32.0,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const CircularProgressIndicator(
                        color: AppColors.backgroundColor,
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                    SizedBox(width: 12.0,),
                    Text(
                      '${matchSnapshot.data!.aggregates?.homeTeam.name.teamNameTranslate ?? "HOME"}',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )),
              DataCell(Center(
                child: Text(
                  '${matchSnapshot.data!.aggregates?.homeTeam.wins ?? 0}',
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )),
              DataCell(Center(
                child: Text(
                  '${matchSnapshot.data!.aggregates?.homeTeam.losses ?? 0}',
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )),
              DataCell(Center(
                child: Text(
                  '${matchSnapshot.data!.aggregates?.homeTeam.draws ?? 0}',
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )),
            ],
          ),
          DataRow(
            color: WidgetStateProperty.all(Colors.white),
            cells: [
              DataCell(Center(
                child: Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: awayTeamCrest,
                      width: 32.0,
                      height: 32.0,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const CircularProgressIndicator(
                        color: AppColors.backgroundColor,
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                    SizedBox(width: 12.0,),
                    Text(
                      '${matchSnapshot.data!.aggregates?.awayTeam.name.teamNameTranslate ?? "AWAY"}',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )),
              DataCell(Center(
                child: Text(
                  '${matchSnapshot.data!.aggregates?.awayTeam.wins ?? 0}',
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )),
              DataCell(Center(
                child: Text(
                  '${matchSnapshot.data!.aggregates?.awayTeam.losses ?? 0}',
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )),
              DataCell(Center(
                child: Text(
                  '${matchSnapshot.data!.aggregates?.awayTeam.draws ?? 0}',
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}