library core;

import 'package:football_premier_league/data/standings/standings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standingsResponse.freezed.dart';
part 'standingsResponse.g.dart';

@freezed
class StandingsResponse with _$StandingsResponse {
  factory StandingsResponse({
    required List<Standings> standings,
    @Default([]) List<String> errors,
  }) = _StandingsResponse;

  factory StandingsResponse.fromJson(Map<String, dynamic> json) =>
      _$StandingsResponseFromJson(json);
}

extension StandingsResponseX on StandingsResponse {
  bool get isEmpty => !hasResults();
  // hasResults() 메서드의 부정 연산자로 isEmpty를 정의
  // hasResults()가 false일 때 isEmpty는 true가 됩니다. 이를 통해 StandingsResponse에 데이터가 없는지를 확인.

  bool hasResults() {
    return standings.isNotEmpty;
    // standings 리스트가 비어 있지 않은지를 확인
    // standings 필드는 StandingsResponse 클래스의 필드로, 프리미어리그의 순위 데이터.
  }

  bool hasErrors() {
    return errors.isNotEmpty;
    // errors 리스트가 비어 있지 않은지를 확인합니다. errors 필드는 StandingsResponse 클래스에서 오류 메시지.
  }
}