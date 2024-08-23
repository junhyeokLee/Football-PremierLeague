import 'package:football_premier_league/data/team/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregates.freezed.dart';
part 'aggregates.g.dart';

@freezed
class Aggregates with _$Aggregates {
  factory Aggregates({
    @Default(0) int numberOfMatches,
    @Default(0) int totalGoals,
    required Team homeTeam,
    required Team awayTeam,
  }) = _Aggregates;

  factory Aggregates.fromJson(Map<String, dynamic> json) =>
      _$AggregatesFromJson(json);
}