// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseEntity<T> _$BaseEntityFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseEntity<T>(
      json['code'] as String,
      json['message'] as String,
      json['info'] as String,
      fromJsonT(json['data']),
    );

Map<String, dynamic> _$BaseEntityToJson<T>(
  BaseEntity<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'info': instance.info,
      'data': toJsonT(instance.data),
    };
