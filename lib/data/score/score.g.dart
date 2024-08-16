// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoreImpl _$$ScoreImplFromJson(Map<String, dynamic> json) => _$ScoreImpl(
      winner: json['winner'] as String,
      duration: json['duration'] as String,
      fullTime: FullTime.fromJson(json['fullTime'] as Map<String, dynamic>),
      halfTime: HalfTime.fromJson(json['halfTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScoreImplToJson(_$ScoreImpl instance) =>
    <String, dynamic>{
      'winner': instance.winner,
      'duration': instance.duration,
      'fullTime': instance.fullTime,
      'halfTime': instance.halfTime,
    };

_$FullTimeImpl _$$FullTimeImplFromJson(Map<String, dynamic> json) =>
    _$FullTimeImpl(
      home: (json['home'] as num).toInt(),
      away: (json['away'] as num).toInt(),
    );

Map<String, dynamic> _$$FullTimeImplToJson(_$FullTimeImpl instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

_$HalfTimeImpl _$$HalfTimeImplFromJson(Map<String, dynamic> json) =>
    _$HalfTimeImpl(
      home: (json['home'] as num).toInt(),
      away: (json['away'] as num).toInt(),
    );

Map<String, dynamic> _$$HalfTimeImplToJson(_$HalfTimeImpl instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };
