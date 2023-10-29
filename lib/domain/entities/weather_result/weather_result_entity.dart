import 'package:demo_getx_flutter/domain/entities/weather_result/alert_result_entity.dart';
import 'package:demo_getx_flutter/domain/entities/weather_result/day_result_entity.dart';
import 'package:demo_getx_flutter/domain/entities/weather_result/station_result_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_result_entity.freezed.dart';

part 'weather_result_entity.g.dart';

@freezed
abstract class WeatherResponse with _$WeatherResponse {
  factory WeatherResponse({
    @Default(0) int? queryCost,
    @Default(0) double latitude,
    @Default(0) double longitude,
    @Default("") String resolvedAddress,
    @Default("") String address,
    @Default("") String timezone,
    @Default(0) double tzoffset,
    @Default([]) List<DayResult> days,
    @Default([]) List<AlertResult> alerts,
    Map<String, StationResult>? stations,
    DayResult? currentConditions,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}
