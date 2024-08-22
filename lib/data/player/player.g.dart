// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
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
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
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
    };
