// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourResult _$$_HourResultFromJson(Map<String, dynamic> json) =>
    _$_HourResult(
      datetime: json['datetime'] as String? ?? "",
      datetimeEpoch: json['datetimeEpoch'] as int? ?? 0,
      tempmax: (json['tempmax'] as num?)?.toDouble() ?? 0,
      tempmin: (json['tempmin'] as num?)?.toDouble() ?? 0,
      temp: (json['temp'] as num?)?.toDouble() ?? 0,
      feelslikemax: (json['feelslikemax'] as num?)?.toDouble() ?? 0,
      feelslikemin: (json['feelslikemin'] as num?)?.toDouble() ?? 0,
      feelslike: (json['feelslike'] as num?)?.toDouble() ?? 0,
      dew: (json['dew'] as num?)?.toDouble() ?? 0,
      humidity: (json['humidity'] as num?)?.toDouble() ?? 0,
      precip: (json['precip'] as num?)?.toDouble() ?? 0,
      precipprob: (json['precipprob'] as num?)?.toDouble() ?? 0,
      precipcover: (json['precipcover'] as num?)?.toDouble() ?? 0,
      preciptype: (json['preciptype'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      snow: (json['snow'] as num?)?.toDouble() ?? 0,
      snowdepth: (json['snowdepth'] as num?)?.toDouble() ?? 0,
      windgust: (json['windgust'] as num?)?.toDouble() ?? 0,
      windspeed: (json['windspeed'] as num?)?.toDouble() ?? 0,
      winddir: (json['winddir'] as num?)?.toDouble() ?? 0,
      pressure: (json['pressure'] as num?)?.toDouble() ?? 0,
      cloudcover: (json['cloudcover'] as num?)?.toDouble() ?? 0,
      visibility: (json['visibility'] as num?)?.toDouble() ?? 0,
      solarradiation: (json['solarradiation'] as num?)?.toDouble() ?? 0,
      solarenergy: (json['solarenergy'] as num?)?.toDouble() ?? 0,
      uvindex: (json['uvindex'] as num?)?.toDouble() ?? 0,
      severerisk: (json['severerisk'] as num?)?.toDouble() ?? 0,
      sunrise: json['sunrise'] as String? ?? "",
      sunriseEpoch: json['sunriseEpoch'] as int? ?? 0,
      sunset: json['sunset'] as String? ?? "",
      sunsetEpoch: json['sunsetEpoch'] as int? ?? 0,
      moonphase: (json['moonphase'] as num?)?.toDouble() ?? 0,
      conditions: json['conditions'] as String? ?? "",
      description: json['description'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      stations: (json['stations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      source: json['source'] as String? ?? "",
    );

Map<String, dynamic> _$$_HourResultToJson(_$_HourResult instance) =>
    <String, dynamic>{
      'datetime': instance.datetime,
      'datetimeEpoch': instance.datetimeEpoch,
      'tempmax': instance.tempmax,
      'tempmin': instance.tempmin,
      'temp': instance.temp,
      'feelslikemax': instance.feelslikemax,
      'feelslikemin': instance.feelslikemin,
      'feelslike': instance.feelslike,
      'dew': instance.dew,
      'humidity': instance.humidity,
      'precip': instance.precip,
      'precipprob': instance.precipprob,
      'precipcover': instance.precipcover,
      'preciptype': instance.preciptype,
      'snow': instance.snow,
      'snowdepth': instance.snowdepth,
      'windgust': instance.windgust,
      'windspeed': instance.windspeed,
      'winddir': instance.winddir,
      'pressure': instance.pressure,
      'cloudcover': instance.cloudcover,
      'visibility': instance.visibility,
      'solarradiation': instance.solarradiation,
      'solarenergy': instance.solarenergy,
      'uvindex': instance.uvindex,
      'severerisk': instance.severerisk,
      'sunrise': instance.sunrise,
      'sunriseEpoch': instance.sunriseEpoch,
      'sunset': instance.sunset,
      'sunsetEpoch': instance.sunsetEpoch,
      'moonphase': instance.moonphase,
      'conditions': instance.conditions,
      'description': instance.description,
      'icon': instance.icon,
      'stations': instance.stations,
      'source': instance.source,
    };
