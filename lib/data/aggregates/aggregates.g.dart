// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AggregatesImpl _$$AggregatesImplFromJson(Map<String, dynamic> json) =>
    _$AggregatesImpl(
      numberOfMatches: (json['numberOfMatches'] as num?)?.toInt() ?? 0,
      totalGoals: (json['totalGoals'] as num?)?.toInt() ?? 0,
      homeTeam: Team.fromJson(json['homeTeam'] as Map<String, dynamic>),
      awayTeam: Team.fromJson(json['awayTeam'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AggregatesImplToJson(_$AggregatesImpl instance) =>
    <String, dynamic>{
      'numberOfMatches': instance.numberOfMatches,
      'totalGoals': instance.totalGoals,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
    };
