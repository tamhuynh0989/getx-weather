import 'package:freezed_annotation/freezed_annotation.dart';

part 'hour_result_entity.freezed.dart';

part 'hour_result_entity.g.dart';

@freezed
class HourResult with _$HourResult {
  factory HourResult({
    @Default("") String datetime,
    @Default(0) int datetimeEpoch,
    @Default(0) double tempmax,
    @Default(0) double tempmin,
    @Default(0) double temp,
    @Default(0) double feelslikemax,
    @Default(0) double feelslikemin,
    @Default(0) double feelslike,
    @Default(0) double dew,
    @Default(0) double humidity,
    @Default(0) double precip,
    @Default(0) double precipprob,
    @Default(0) double precipcover,
    @Default([]) List<String> preciptype,
    @Default(0) double snow,
    @Default(0) double snowdepth,
    @Default(0) double windgust,
    @Default(0) double windspeed,
    @Default(0) double winddir,
    @Default(0) double pressure,
    @Default(0) double cloudcover,
    @Default(0) double visibility,
    @Default(0) double solarradiation,
    @Default(0) double solarenergy,
    @Default(0) double uvindex,
    @Default(0) double severerisk,
    @Default("") String sunrise,
    @Default(0) int sunriseEpoch,
    @Default("") String sunset,
    @Default(0) int sunsetEpoch,
    @Default(0) double moonphase,
    @Default("") String conditions,
    @Default("") String description,
    @Default("") String icon,
    @Default([]) List<String> stations,
    @Default("") String source,
  }) = _HourResult;

  factory HourResult.fromJson(Map<String, dynamic> json) =>
      _$HourResultFromJson(json);
}
