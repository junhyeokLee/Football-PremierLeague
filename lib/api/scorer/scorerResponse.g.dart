// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorerResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScorerResponseImpl _$$ScorerResponseImplFromJson(Map<String, dynamic> json) =>
    _$ScorerResponseImpl(
      scorers: (json['scorers'] as List<dynamic>)
          .map((e) => Scorer.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ScorerResponseImplToJson(
        _$ScorerResponseImpl instance) =>
    <String, dynamic>{
      'scorers': instance.scorers,
      'errors': instance.errors,
    };
