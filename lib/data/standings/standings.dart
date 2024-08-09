import 'package:freezed_annotation/freezed_annotation.dart';

part 'standings.freezed.dart';
part 'standings.g.dart';

@freezed
class Standings with _$Standings {
  factory Standings({
    required String stage,
    required String type,
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
    required int playedGames,
    required String form,
    required int won,
    required int draw,
    required int lost,
    required int points,
    required int goalsFor,
    required int goalsAgainst,
    required int goalDifference,
  }) = _Table;

  factory Table.fromJson(Map<String, dynamic> json) =>
      _$TableFromJson(json);
}

@freezed
class Team with _$Team {
  factory Team({
    required int id,
    required String name,
    required String shortName,
    required String tla,
    required String crest,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) =>
      _$TeamFromJson(json);
}