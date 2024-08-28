// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playerResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerResponseImpl _$$PlayerResponseImplFromJson(Map<String, dynamic> json) =>
    _$PlayerResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? "",
      firstName: json['firstName'] as String? ?? "",
      lastName: json['lastName'] as String? ?? "",
      dateOfBirth: json['dateOfBirth'] as String? ?? "",
      nationality: json['nationality'] as String? ?? "",
      section: json['section'] as String? ?? "",
      position: json['position'] ?? "",
      shirtNumber: json['shirtNumber'] ?? 0,
      lastUpdated: json['lastUpdated'] as String,
      currentTeam:
          CurrentTeam.fromJson(json['currentTeam'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PlayerResponseImplToJson(
        _$PlayerResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth,
      'nationality': instance.nationality,
      'section': instance.section,
      'position': instance.position,
      'shirtNumber': instance.shirtNumber,
      'lastUpdated': instance.lastUpdated,
      'currentTeam': instance.currentTeam,
      'errors': instance.errors,
    };
