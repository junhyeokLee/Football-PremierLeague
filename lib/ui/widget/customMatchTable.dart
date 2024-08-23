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
    return Column(
      children: [
        Expanded(
          child: DataTable2(
            columnSpacing: 12.0, // 열 간격을 적절하게 설정
            dataRowHeight: 40.0, // 각 행의 높이 설정 (필요에 따라 조정)
            headingRowHeight: 40.0, // 헤더 행의 높이 설정
            // border: TableBorder.all(color: Colors.grey.withOpacity(0.5)), // 테이블 테두리 추가
            bottomMargin: 16.0, // 테이블 아래 여백 추가
            border: TableBorder(
              bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
              top: BorderSide(color: Colors.grey.withOpacity(0.5)),
              left: BorderSide(color: Colors.grey.withOpacity(0.5)),
              right: BorderSide(color: Colors.grey.withOpacity(0.5)),
              horizontalInside: BorderSide.none, // 각 행 사이의 수평 테두리 없음
              verticalInside: BorderSide.none, // 각 열 사이의 수직 테두리 없음
            ),
          
            // decoration: BoxDecoration(
            //   color: Colors.white, // 테이블 배경색 설정
            //   border: Border.all(color: Colors.grey.withOpacity(0.5)), // 테두리 추가
            // ),
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
                // size: ColumnSize.values,  // 사용자 정의 너비
                fixedWidth: 150.0,  // 원하는 너비 설정
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
                color: WidgetStateProperty.all(Colors.white), // 행의 배경색 설정
                cells: [
                  DataCell(Center(
                    child: Text(
                      '${matchSnapshot.data!.aggregates?.homeTeam.name.teamNameTranslate ?? "HOME"}',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                      ),
                      overflow: TextOverflow.ellipsis, // 텍스트가 넘칠 경우 말줄임 표시
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
                color: WidgetStateProperty.all(Colors.white), // 행의 배경색 설정
                cells: [
                  DataCell(Center(
                    child: Text(
                      '${matchSnapshot.data!.aggregates?.awayTeam.name.teamNameTranslate ?? "AWAY"}',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        overflow: TextOverflow.ellipsis, // 텍스트가 넘칠 경우 말줄임 표시
                      ),
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
        ),
        Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(right: 16.0),
            child: Text('${matchSnapshot.data!.aggregates?.numberOfMatches ?? 0}경기',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ))),
      ],
    );
  }
}