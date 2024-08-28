

import 'package:football_premier_league/data/area/area.dart';
import 'package:football_premier_league/data/coach/coach.dart';
import 'package:football_premier_league/data/runningCompetition/runningCompetition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teamDetail.freezed.dart';
part 'teamDetail.g.dart';

@freezed
class TeamDetail with _$TeamDetail {
  factory TeamDetail({
    required int id,               // 팀 고유 ID
    @Default("") String name,          // 팀 이름
    @Default("") String shortName,     // 팀 약어
    @Default("") String tla,           // 팀의 3글자 약어
    @Default("") String crest,         // 팀 엠블럼 URL
    @Default("") String address,       // 팀 주소
    @Default("") String website,       // 팀 웹사이트
    @Default(0) int founded,          // 창단 연도
    @Default("") String clubColors,    // 팀 색상
    @Default("") String venue,         // 홈 경기장
    @Default("") String lastUpdated,    // 마지막 업데이트 시간
  }) = _TeamDetail;

  factory TeamDetail.fromJson(Map<String, dynamic> json) =>
      _$TeamDetailFromJson(json);
}


@freezed
class CurrentTeam with _$CurrentTeam {
  factory CurrentTeam({
    required Area area,
    required int id,               // 팀 고유 ID
    @Default("") String name,          // 팀 이름
    @Default("") String shortName,     // 팀 약어
    @Default("") String tla,           // 팀의 3글자 약어
    @Default("") String crest,         // 팀 엠블럼 URL
    @Default("") String address,       // 팀 주소
    @Default("") String website,       // 팀 웹사이트
    @Default(0) int founded,          // 창단 연도
    @Default("") String clubColors,    // 팀 색상
    @Default("") String venue,         // 홈 경기장
    @Default([]) List<RunningCompetition> runningCompetition,
    required Contract contract,
  }) = _CurrentTeam;

  factory CurrentTeam.fromJson(Map<String, dynamic> json) => _$CurrentTeamFromJson(json);
}