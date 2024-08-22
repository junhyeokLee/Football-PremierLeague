import 'package:football_premier_league/data/player/player.dart';
import 'package:football_premier_league/data/team/teamDetail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scorer.freezed.dart';
part 'scorer.g.dart';

// Scorer 클래스 정의
@freezed
class Scorer with _$Scorer {
  factory Scorer({
    required Player player,        // 선수 정보
    required TeamDetail team,           // 팀 정보
    @Default(0) int playedMatches,    // 출전 경기 수
    @Default(0) int goals,            // 득점 수
    @Default(0) int assists,          // 도움 수
    int? penalties,                // 페널티 수 (선택적)
  }) = _Scorer;

  factory Scorer.fromJson(Map<String, dynamic> json) => _$ScorerFromJson(json);
}