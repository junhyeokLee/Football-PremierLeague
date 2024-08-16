import 'package:freezed_annotation/freezed_annotation.dart';

part 'referee.freezed.dart';
part 'referee.g.dart';

@freezed
class Referee with _$Referee {
  factory Referee({
    required int id,
    required String name,
    required String type,
    required String nationality,
  }) = _Referee;

  factory Referee.fromJson(Map<String, dynamic> json) => _$RefereeFromJson(json);
}