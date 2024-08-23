// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? "",
      shortName: json['shortName'] as String? ?? "",
      tla: json['tla'] as String? ?? "",
      crest: json['crest'] as String? ?? "",
      wins: (json['wins'] as num?)?.toInt() ?? 0,
      draws: (json['draws'] as num?)?.toInt() ?? 0,
      losses: (json['losses'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'tla': instance.tla,
      'crest': instance.crest,
      'wins': instance.wins,
      'draws': instance.draws,
      'losses': instance.losses,
    };
