// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standingsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StandingsResponseImpl _$$StandingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StandingsResponseImpl(
      standings: (json['standings'] as List<dynamic>)
          .map((e) => Standings.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StandingsResponseImplToJson(
        _$StandingsResponseImpl instance) =>
    <String, dynamic>{
      'standings': instance.standings,
      'errors': instance.errors,
    };
