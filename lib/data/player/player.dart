import 'package:football_premier_league/data/area/area.dart';
import 'package:football_premier_league/data/team/teamDetail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  factory Player({
    required int id,
    @Default("") String name,
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String dateOfBirth,
    @Default("") String nationality,
    @Default("") String section,
    @Default("") position,
    @Default(0) shirtNumber,
    required String lastUpdated,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class Squad with _$Squad {
  factory Squad({
    required int id,
    @Default("") String name,
    @Default("") position,
    @Default("") String dateOfBirth,
    @Default("") String nationality,
  }) = _Squad;

  factory Squad.fromJson(Map<String, dynamic> json) => _$SquadFromJson(json);
}
