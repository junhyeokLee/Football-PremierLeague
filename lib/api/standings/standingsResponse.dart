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
  // 상태 코드에 따라 에러 메시지를 반환하는 메서드
  String getErrorMessage() {
    if (hasErrors()) {
      // 상태 코드에 따른 에러 메시지 반환
      for (var error in errors) {
        switch (error) {
          case '403':
            return '접근 권한이 없습니다.'; // 403 에러 메시지
          case '404':
            return '요청한 데이터를 찾을 수 없습니다.'; // 404 에러 메시지
          case '500':
            return '서버 오류가 발생했습니다.'; // 500 에러 메시지
          default:
            return '알 수 없는 오류가 발생했습니다.'; // 기본 메시지
        }
      }
    }
    return '알 수 없는 오류가 발생했습니다.'; // 기본 메시지
  }

}