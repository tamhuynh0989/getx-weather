import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_result_entity.freezed.dart';

part 'station_result_entity.g.dart';

@freezed
class StationResult with _$StationResult {
  factory StationResult({
    @Default(0) double distance,
    @Default(0) double latitude,
    @Default(0) double longitude,
    @Default(0) int useCount,
    @Default("") String id,
    @Default("") String name,
    @Default(0) int quality,
    @Default(0) double contribution,
  }) = _StationResult;

  factory StationResult.fromJson(Map<String, dynamic> json) =>
      _$StationResultFromJson(json);
}
