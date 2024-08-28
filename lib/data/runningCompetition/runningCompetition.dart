import 'package:freezed_annotation/freezed_annotation.dart';

part 'runningCompetition.freezed.dart';
part 'runningCompetition.g.dart';

@freezed
class RunningCompetition with _$RunningCompetition {
  factory RunningCompetition({
    required int id,
    @Default("") String name,
    @Default("") String code,
    @Default("") String type,
    String? emblem,
  }) = _RunningCompetition;

  factory RunningCompetition.fromJson(Map<String, dynamic> json) => _$RunningCompetitionFromJson(json);
}