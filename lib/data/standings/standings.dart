import 'package:football_premier_league/data/team/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standings.freezed.dart';
part 'standings.g.dart';

@freezed
class Standings with _$Standings {
  factory Standings({
    @Default("") String stage,
    @Default("") String type,
    String? group,
    required List<Table> table,
  }) = _Standings;

  factory Standings.fromJson(Map<String, dynamic> json) =>
      _$StandingsFromJson(json);
}

@freezed
class Table with _$Table {
  factory Table({
    required int position,
    required Team team,
    @Default(0) int playedGames,
    @Default("") String form,
    @Default(0) int won,
    @Default(0) int draw,
    @Default(0) int lost,
    @Default(0) int points,
    @Default(0) int goalsFor,
    @Default(0) int goalsAgainst,
    @Default(0) int goalDifference,
  }) = _Table;

  factory Table.fromJson(Map<String, dynamic> json) =>
      _$TableFromJson(json);
}
