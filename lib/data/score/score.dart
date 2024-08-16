import 'package:freezed_annotation/freezed_annotation.dart';

part 'score.freezed.dart';
part 'score.g.dart';

@freezed
class Score with _$Score {
  factory Score({
    required String winner,
    required String duration,
    required FullTime fullTime,
    required HalfTime halfTime,
  }) = _Score;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}


@freezed
class FullTime with _$FullTime {
  factory FullTime({
    required int home,
    required int away,
  }) = _FullTime;

  factory FullTime.fromJson(Map<String, dynamic> json) =>
      _$FullTimeFromJson(json);
}

@freezed
class HalfTime with _$HalfTime {
  factory HalfTime({
    required int home,
    required int away,
  }) = _HalfTime;

  factory HalfTime.fromJson(Map<String, dynamic> json) =>
      _$HalfTimeFromJson(json);
}

