// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlertResult _$$_AlertResultFromJson(Map<String, dynamic> json) =>
    _$_AlertResult(
      event: json['event'] as String? ?? "",
      headline: json['headline'] as String? ?? "",
      ends: json['ends'] as String? ?? "",
      endsEpoch: json['endsEpoch'] as int? ?? 0,
      onset: json['onset'] as String? ?? "",
      onsetEpoch: json['onsetEpoch'] as int? ?? 0,
      id: json['id'] as String? ?? "",
      language: json['language'] as String? ?? "",
      link: json['link'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$_AlertResultToJson(_$_AlertResult instance) =>
    <String, dynamic>{
      'event': instance.event,
      'headline': instance.headline,
      'ends': instance.ends,
      'endsEpoch': instance.endsEpoch,
      'onset': instance.onset,
      'onsetEpoch': instance.onsetEpoch,
      'id': instance.id,
      'language': instance.language,
      'link': instance.link,
      'description': instance.description,
    };
