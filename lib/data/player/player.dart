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