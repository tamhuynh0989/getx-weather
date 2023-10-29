import 'package:json_annotation/json_annotation.dart';

part 'base_entity.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class BaseEntity<T> {
  BaseEntity(this.code, this.message, this.info, this.data);

  factory BaseEntity.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseEntityFromJson(json, fromJsonT);

  final String code;
  final String message;
  final String info;
  final T data;

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$BaseEntityToJson(this, toJsonT);
}
