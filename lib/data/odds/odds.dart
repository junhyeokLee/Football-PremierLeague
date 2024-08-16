import 'package:freezed_annotation/freezed_annotation.dart';

part 'odds.freezed.dart';
part 'odds.g.dart';

@freezed
class Odds with _$Odds {
  factory Odds({
    required String msg,
  }) = _Odds;

  factory Odds.fromJson(Map<String, dynamic> json) => _$OddsFromJson(json);
}