import 'package:football_premier_league/data/area/area.dart';
import 'package:football_premier_league/data/competition/competition.dart';
import 'package:football_premier_league/data/odds/odds.dart';
import 'package:football_premier_league/data/referee/referee.dart';
import 'package:football_premier_league/data/score/score.dart';
import 'package:football_premier_league/data/season/season.dart';
import 'package:football_premier_league/data/team/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'matche.freezed.dart';
part 'matche.g.dart';

@freezed
class Match with _$Match {
  factory Match({
    required Area area,
    required Competition competition,
    required Season season,
    required int id,
    @Default("") String utcDate,
    @Default("") String status,
    @Default(0) int matchday,
    @Default("") String stage,
    String? group,
    @Default("") String lastUpdated,
    required Team homeTeam,
    required Team awayTeam,
    required Score score,
    Odds? odds,
    required List<Referee> referees,
  }) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}
