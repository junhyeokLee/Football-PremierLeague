// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matche.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchImpl _$$MatchImplFromJson(Map<String, dynamic> json) => _$MatchImpl(
      area: Area.fromJson(json['area'] as Map<String, dynamic>),
      competition:
          Competition.fromJson(json['competition'] as Map<String, dynamic>),
      season: Season.fromJson(json['season'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      utcDate: json['utcDate'] as String? ?? "",
      status: json['status'] as String? ?? "",
      matchday: (json['matchday'] as num?)?.toInt() ?? 0,
      stage: json['stage'] as String? ?? "",
      group: json['group'] as String?,
      lastUpdated: json['lastUpdated'] as String? ?? "",
      homeTeam: Team.fromJson(json['homeTeam'] as Map<String, dynamic>),
      awayTeam: Team.fromJson(json['awayTeam'] as Map<String, dynamic>),
      score: Score.fromJson(json['score'] as Map<String, dynamic>),
      odds: json['odds'] == null
          ? null
          : Odds.fromJson(json['odds'] as Map<String, dynamic>),
      referees: (json['referees'] as List<dynamic>)
          .map((e) => Referee.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MatchImplToJson(_$MatchImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'competition': instance.competition,
      'season': instance.season,
      'id': instance.id,
      'utcDate': instance.utcDate,
      'status': instance.status,
      'matchday': instance.matchday,
      'stage': instance.stage,
      'group': instance.group,
      'lastUpdated': instance.lastUpdated,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
      'score': instance.score,
      'odds': instance.odds,
      'referees': instance.referees,
    };
