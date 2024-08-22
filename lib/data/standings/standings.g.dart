// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StandingsImpl _$$StandingsImplFromJson(Map<String, dynamic> json) =>
    _$StandingsImpl(
      stage: json['stage'] as String? ?? "",
      type: json['type'] as String? ?? "",
      group: json['group'] as String?,
      table: (json['table'] as List<dynamic>)
          .map((e) => Table.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StandingsImplToJson(_$StandingsImpl instance) =>
    <String, dynamic>{
      'stage': instance.stage,
      'type': instance.type,
      'group': instance.group,
      'table': instance.table,
    };

_$TableImpl _$$TableImplFromJson(Map<String, dynamic> json) => _$TableImpl(
      position: (json['position'] as num).toInt(),
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      playedGames: (json['playedGames'] as num?)?.toInt() ?? 0,
      form: json['form'] as String? ?? "",
      won: (json['won'] as num?)?.toInt() ?? 0,
      draw: (json['draw'] as num?)?.toInt() ?? 0,
      lost: (json['lost'] as num?)?.toInt() ?? 0,
      points: (json['points'] as num?)?.toInt() ?? 0,
      goalsFor: (json['goalsFor'] as num?)?.toInt() ?? 0,
      goalsAgainst: (json['goalsAgainst'] as num?)?.toInt() ?? 0,
      goalDifference: (json['goalDifference'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TableImplToJson(_$TableImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'team': instance.team,
      'playedGames': instance.playedGames,
      'form': instance.form,
      'won': instance.won,
      'draw': instance.draw,
      'lost': instance.lost,
      'points': instance.points,
      'goalsFor': instance.goalsFor,
      'goalsAgainst': instance.goalsAgainst,
      'goalDifference': instance.goalDifference,
    };
