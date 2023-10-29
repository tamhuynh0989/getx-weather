// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StationResult _$$_StationResultFromJson(Map<String, dynamic> json) =>
    _$_StationResult(
      distance: (json['distance'] as num?)?.toDouble() ?? 0,
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
      useCount: json['useCount'] as int? ?? 0,
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      quality: json['quality'] as int? ?? 0,
      contribution: (json['contribution'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_StationResultToJson(_$_StationResult instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'useCount': instance.useCount,
      'id': instance.id,
      'name': instance.name,
      'quality': instance.quality,
      'contribution': instance.contribution,
    };
