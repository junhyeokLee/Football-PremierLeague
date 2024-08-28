// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamDetailImpl _$$TeamDetailImplFromJson(Map<String, dynamic> json) =>
    _$TeamDetailImpl(
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
      lastUpdated: json['lastUpdated'] as String? ?? "",
    );

Map<String, dynamic> _$$TeamDetailImplToJson(_$TeamDetailImpl instance) =>
    <String, dynamic>{
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
      'lastUpdated': instance.lastUpdated,
    };

_$CurrentTeamImpl _$$CurrentTeamImplFromJson(Map<String, dynamic> json) =>
    _$CurrentTeamImpl(
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
      runningCompetition: (json['runningCompetition'] as List<dynamic>?)
              ?.map(
                  (e) => RunningCompetition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentTeamImplToJson(_$CurrentTeamImpl instance) =>
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
      'runningCompetition': instance.runningCompetition,
      'contract': instance.contract,
    };
