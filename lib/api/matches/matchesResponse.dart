library core;
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:football_premier_league/data/matches/matche.dart';

part 'matchesResponse.freezed.dart';
part 'matchesResponse.g.dart';

@freezed
class MatchesResponse with _$MatchesResponse {
  factory MatchesResponse({
    required List<Match> matches,
    @Default([]) List<String> errors,
  }) = _MatchesResponse;

  factory MatchesResponse.fromJson(Map<String, dynamic> json) =>
      _$MatchesResponseFromJson(json);
}


extension MatchesResponseX on MatchesResponse {
  bool get isEmpty => !hasResults(); // 데이터가 없는지 확인
  bool hasResults() => matches.isNotEmpty; // 결과가 있는지 확인
  bool hasErrors() => errors.isNotEmpty; // 에러가 있는지 확인

}