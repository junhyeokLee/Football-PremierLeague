// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonImpl _$$SeasonImplFromJson(Map<String, dynamic> json) => _$SeasonImpl(
      id: (json['id'] as num).toInt(),
      startDate: json['startDate'] as String? ?? "",
      endDate: json['endDate'] as String? ?? "",
      currentMatchday: (json['currentMatchday'] as num?)?.toInt() ?? 0,
      winner: json['winner'] ?? null,
    );

Map<String, dynamic> _$$SeasonImplToJson(_$SeasonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'currentMatchday': instance.currentMatchday,
      'winner': instance.winner,
    };
