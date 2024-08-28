// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachImpl _$$CoachImplFromJson(Map<String, dynamic> json) => _$CoachImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String? ?? "",
      lastName: json['lastName'] as String? ?? "",
      name: json['name'] as String? ?? "",
      dateOfBirth: json['dateOfBirth'] as String? ?? "",
      nationality: json['nationality'] as String? ?? "",
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoachImplToJson(_$CoachImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth,
      'nationality': instance.nationality,
      'contract': instance.contract,
    };

_$ContractImpl _$$ContractImplFromJson(Map<String, dynamic> json) =>
    _$ContractImpl(
      start: json['start'] as String? ?? "",
      until: json['until'] as String? ?? "",
    );

Map<String, dynamic> _$$ContractImplToJson(_$ContractImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'until': instance.until,
    };
