import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach.freezed.dart';
part 'coach.g.dart';


@freezed
class Coach with _$Coach {
  factory Coach({
    required int id,
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String name,
    @Default("") String dateOfBirth,
    @Default("") String nationality,
    required Contract contract,
  }) = _Coach;

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}

@freezed
class Contract with _$Contract {
  factory Contract({
    @Default("") String start,
    @Default("") String until,
  }) = _Contract;

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
}
