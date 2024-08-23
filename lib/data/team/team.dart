

import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  factory Team({
    required int id,
    @Default("") String name,
    @Default("") String shortName,
    @Default("") String tla,
    @Default("") String crest,
    @Default(0) int wins,
    @Default(0) int draws,
    @Default(0) int losses,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) =>
      _$TeamFromJson(json);
}