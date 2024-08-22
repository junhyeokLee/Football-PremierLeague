// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScorerImpl _$$ScorerImplFromJson(Map<String, dynamic> json) => _$ScorerImpl(
      player: Player.fromJson(json['player'] as Map<String, dynamic>),
      team: TeamDetail.fromJson(json['team'] as Map<String, dynamic>),
      playedMatches: (json['playedMatches'] as num?)?.toInt() ?? 0,
      goals: (json['goals'] as num?)?.toInt() ?? 0,
      assists: (json['assists'] as num?)?.toInt() ?? 0,
      penalties: (json['penalties'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ScorerImplToJson(_$ScorerImpl instance) =>
    <String, dynamic>{
      'player': instance.player,
      'team': instance.team,
      'playedMatches': instance.playedMatches,
      'goals': instance.goals,
      'assists': instance.assists,
      'penalties': instance.penalties,
    };
