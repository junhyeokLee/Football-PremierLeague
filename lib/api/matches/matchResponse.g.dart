// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matchResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchResponseImpl _$$MatchResponseImplFromJson(Map<String, dynamic> json) =>
    _$MatchResponseImpl(
      aggregates:
          Aggregates.fromJson(json['aggregates'] as Map<String, dynamic>),
      matches: (json['matches'] as List<dynamic>)
          .map((e) => Match.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MatchResponseImplToJson(_$MatchResponseImpl instance) =>
    <String, dynamic>{
      'aggregates': instance.aggregates,
      'matches': instance.matches,
      'errors': instance.errors,
    };
