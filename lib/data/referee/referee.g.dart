// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefereeImpl _$$RefereeImplFromJson(Map<String, dynamic> json) =>
    _$RefereeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? "",
      type: json['type'] as String? ?? "",
      nationality: json['nationality'] as String? ?? "",
    );

Map<String, dynamic> _$$RefereeImplToJson(_$RefereeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'nationality': instance.nationality,
    };
