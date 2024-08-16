library core;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:football_premier_league/data/matches/matche.dart';

part 'matchesResponse.freezed.dart';
part 'matchesResponse.g.dart';

@freezed
class MatchesResponse with _$MatchesResponse {
  factory MatchesResponse({
    required List<Match> matches,
  }) = _MatchesResponse;

  factory MatchesResponse.fromJson(Map<String, dynamic> json) =>
      _$MatchesResponseFromJson(json);
}
