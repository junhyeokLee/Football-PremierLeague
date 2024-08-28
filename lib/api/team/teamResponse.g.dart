// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamResponseImpl _$$TeamResponseImplFromJson(Map<String, dynamic> json) =>
    _$TeamResponseImpl(
      area: Area.fromJson(json['area'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? "",
      shortName: json['shortName'] as String? ?? "",
      tla: json['tla'] as String? ?? "",
      crest: json['crest'] as String? ?? "",
      address: json['address'] as String? ?? "",
      website: json['website'] as String? ?? "",
      founded: (json['founded'] as num?)?.toInt() ?? 0,
      clubColors: json['clubColors'] as String? ?? "",
      venue: json['venue'] as String? ?? "",
      runningCompetitions: (json['runningCompetitions'] as List<dynamic>?)
              ?.map(
                  (e) => RunningCompetition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      coach: Coach.fromJson(json['coach'] as Map<String, dynamic>),
      squad: (json['squad'] as List<dynamic>?)
              ?.map((e) => Squad.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      staff: (json['staff'] as List<dynamic>?)
              ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastUpdated: json['lastUpdated'] as String? ?? "",
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TeamResponseImplToJson(_$TeamResponseImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'tla': instance.tla,
      'crest': instance.crest,
      'address': instance.address,
      'website': instance.website,
      'founded': instance.founded,
      'clubColors': instance.clubColors,
      'venue': instance.venue,
      'runningCompetitions': instance.runningCompetitions,
      'coach': instance.coach,
      'squad': instance.squad,
      'staff': instance.staff,
      'lastUpdated': instance.lastUpdated,
      'errors': instance.errors,
    };
