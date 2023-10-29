// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherResponse _$$_WeatherResponseFromJson(Map<String, dynamic> json) =>
    _$_WeatherResponse(
      queryCost: json['queryCost'] as int? ?? 0,
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
      resolvedAddress: json['resolvedAddress'] as String? ?? "",
      address: json['address'] as String? ?? "",
      timezone: json['timezone'] as String? ?? "",
      tzoffset: (json['tzoffset'] as num?)?.toDouble() ?? 0,
      days: (json['days'] as List<dynamic>?)
              ?.map((e) => DayResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      alerts: (json['alerts'] as List<dynamic>?)
              ?.map((e) => AlertResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stations: (json['stations'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, StationResult.fromJson(e as Map<String, dynamic>)),
      ),
      currentConditions: json['currentConditions'] == null
          ? null
          : DayResult.fromJson(
              json['currentConditions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherResponseToJson(_$_WeatherResponse instance) =>
    <String, dynamic>{
      'queryCost': instance.queryCost,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'resolvedAddress': instance.resolvedAddress,
      'address': instance.address,
      'timezone': instance.timezone,
      'tzoffset': instance.tzoffset,
      'days': instance.days,
      'alerts': instance.alerts,
      'stations': instance.stations,
      'currentConditions': instance.currentConditions,
    };
