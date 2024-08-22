library core;
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