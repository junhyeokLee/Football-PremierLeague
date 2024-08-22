import 'package:freezed_annotation/freezed_annotation.dart';

part 'referee.freezed.dart';
part 'referee.g.dart';

@freezed
class Referee with _$Referee {
  factory Referee({
    required int id,
    @Default("") String name,
    @Default("") String type,
    @Default("") String nationality,
  }) = _Referee;

  factory Referee.fromJson(Map<String, dynamic> json) => _$RefereeFromJson(json);
}