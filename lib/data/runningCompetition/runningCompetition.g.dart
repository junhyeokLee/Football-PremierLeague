// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runningCompetition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RunningCompetitionImpl _$$RunningCompetitionImplFromJson(
        Map<String, dynamic> json) =>
    _$RunningCompetitionImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? "",
      code: json['code'] as String? ?? "",
      type: json['type'] as String? ?? "",
      emblem: json['emblem'] as String?,
    );

Map<String, dynamic> _$$RunningCompetitionImplToJson(
        _$RunningCompetitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'type': instance.type,
      'emblem': instance.emblem,
    };
