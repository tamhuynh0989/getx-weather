import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_result_entity.freezed.dart';

part 'alert_result_entity.g.dart';

@freezed
class AlertResult with _$AlertResult {
  factory AlertResult({
    @Default("") String event,
    @Default("") String headline,
    @Default("") String ends,
    @Default(0) int endsEpoch,
    @Default("") String onset,
    @Default(0) int onsetEpoch,
    @Default("") String id,
    @Default("") String language,
    @Default("") String link,
    @Default("") String description,
  }) = _AlertResult;

  factory AlertResult.fromJson(Map<String, dynamic> json) =>
      _$AlertResultFromJson(json);
}
