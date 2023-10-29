// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StationResult _$StationResultFromJson(Map<String, dynamic> json) {
  return _StationResult.fromJson(json);
}

/// @nodoc
mixin _$StationResult {
  double get distance => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  int get useCount => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get quality => throw _privateConstructorUsedError;
  double get contribution => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationResultCopyWith<StationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationResultCopyWith<$Res> {
  factory $StationResultCopyWith(
          StationResult value, $Res Function(StationResult) then) =
      _$StationResultCopyWithImpl<$Res, StationResult>;
  @useResult
  $Res call(
      {double distance,
      double latitude,
      double longitude,
      int useCount,
      String id,
      String name,
      int quality,
      double contribution});
}

/// @nodoc
class _$StationResultCopyWithImpl<$Res, $Val extends StationResult>
    implements $StationResultCopyWith<$Res> {
  _$StationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? useCount = null,
    Object? id = null,
    Object? name = null,
    Object? quality = null,
    Object? contribution = null,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      useCount: null == useCount
          ? _value.useCount
          : useCount // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      contribution: null == contribution
          ? _value.contribution
          : contribution // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StationResultCopyWith<$Res>
    implements $StationResultCopyWith<$Res> {
  factory _$$_StationResultCopyWith(
          _$_StationResult value, $Res Function(_$_StationResult) then) =
      __$$_StationResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double distance,
      double latitude,
      double longitude,
      int useCount,
      String id,
      String name,
      int quality,
      double contribution});
}

/// @nodoc
class __$$_StationResultCopyWithImpl<$Res>
    extends _$StationResultCopyWithImpl<$Res, _$_StationResult>
    implements _$$_StationResultCopyWith<$Res> {
  __$$_StationResultCopyWithImpl(
      _$_StationResult _value, $Res Function(_$_StationResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? useCount = null,
    Object? id = null,
    Object? name = null,
    Object? quality = null,
    Object? contribution = null,
  }) {
    return _then(_$_StationResult(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      useCount: null == useCount
          ? _value.useCount
          : useCount // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      contribution: null == contribution
          ? _value.contribution
          : contribution // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StationResult implements _StationResult {
  _$_StationResult(
      {this.distance = 0,
      this.latitude = 0,
      this.longitude = 0,
      this.useCount = 0,
      this.id = "",
      this.name = "",
      this.quality = 0,
      this.contribution = 0});

  factory _$_StationResult.fromJson(Map<String, dynamic> json) =>
      _$$_StationResultFromJson(json);

  @override
  @JsonKey()
  final double distance;
  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;
  @override
  @JsonKey()
  final int useCount;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int quality;
  @override
  @JsonKey()
  final double contribution;

  @override
  String toString() {
    return 'StationResult(distance: $distance, latitude: $latitude, longitude: $longitude, useCount: $useCount, id: $id, name: $name, quality: $quality, contribution: $contribution)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StationResult &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.useCount, useCount) ||
                other.useCount == useCount) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.contribution, contribution) ||
                other.contribution == contribution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, distance, latitude, longitude,
      useCount, id, name, quality, contribution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StationResultCopyWith<_$_StationResult> get copyWith =>
      __$$_StationResultCopyWithImpl<_$_StationResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StationResultToJson(
      this,
    );
  }
}

abstract class _StationResult implements StationResult {
  factory _StationResult(
      {final double distance,
      final double latitude,
      final double longitude,
      final int useCount,
      final String id,
      final String name,
      final int quality,
      final double contribution}) = _$_StationResult;

  factory _StationResult.fromJson(Map<String, dynamic> json) =
      _$_StationResult.fromJson;

  @override
  double get distance;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  int get useCount;
  @override
  String get id;
  @override
  String get name;
  @override
  int get quality;
  @override
  double get contribution;
  @override
  @JsonKey(ignore: true)
  _$$_StationResultCopyWith<_$_StationResult> get copyWith =>
      throw _privateConstructorUsedError;
}
