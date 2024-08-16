// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matchesResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchesResponseImpl _$$MatchesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MatchesResponseImpl(
      matches: (json['matches'] as List<dynamic>)
          .map((e) => Match.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MatchesResponseImplToJson(
        _$MatchesResponseImpl instance) =>
    <String, dynamic>{
      'matches': instance.matches,
    };
