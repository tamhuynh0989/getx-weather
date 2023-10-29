// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  int? get queryCost => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get resolvedAddress => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  double get tzoffset => throw _privateConstructorUsedError;
  List<DayResult> get days => throw _privateConstructorUsedError;
  List<AlertResult> get alerts => throw _privateConstructorUsedError;
  Map<String, StationResult>? get stations =>
      throw _privateConstructorUsedError;
  DayResult? get currentConditions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call(
      {int? queryCost,
      double latitude,
      double longitude,
      String resolvedAddress,
      String address,
      String timezone,
      double tzoffset,
      List<DayResult> days,
      List<AlertResult> alerts,
      Map<String, StationResult>? stations,
      DayResult? currentConditions});

  $DayResultCopyWith<$Res>? get currentConditions;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryCost = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? resolvedAddress = null,
    Object? address = null,
    Object? timezone = null,
    Object? tzoffset = null,
    Object? days = null,
    Object? alerts = null,
    Object? stations = freezed,
    Object? currentConditions = freezed,
  }) {
    return _then(_value.copyWith(
      queryCost: freezed == queryCost
          ? _value.queryCost
          : queryCost // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      resolvedAddress: null == resolvedAddress
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      tzoffset: null == tzoffset
          ? _value.tzoffset
          : tzoffset // ignore: cast_nullable_to_non_nullable
              as double,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayResult>,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<AlertResult>,
      stations: freezed == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as Map<String, StationResult>?,
      currentConditions: freezed == currentConditions
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as DayResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayResultCopyWith<$Res>? get currentConditions {
    if (_value.currentConditions == null) {
      return null;
    }

    return $DayResultCopyWith<$Res>(_value.currentConditions!, (value) {
      return _then(_value.copyWith(currentConditions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherResponseCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$_WeatherResponseCopyWith(
          _$_WeatherResponse value, $Res Function(_$_WeatherResponse) then) =
      __$$_WeatherResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? queryCost,
      double latitude,
      double longitude,
      String resolvedAddress,
      String address,
      String timezone,
      double tzoffset,
      List<DayResult> days,
      List<AlertResult> alerts,
      Map<String, StationResult>? stations,
      DayResult? currentConditions});

  @override
  $DayResultCopyWith<$Res>? get currentConditions;
}

/// @nodoc
class __$$_WeatherResponseCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$_WeatherResponse>
    implements _$$_WeatherResponseCopyWith<$Res> {
  __$$_WeatherResponseCopyWithImpl(
      _$_WeatherResponse _value, $Res Function(_$_WeatherResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryCost = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? resolvedAddress = null,
    Object? address = null,
    Object? timezone = null,
    Object? tzoffset = null,
    Object? days = null,
    Object? alerts = null,
    Object? stations = freezed,
    Object? currentConditions = freezed,
  }) {
    return _then(_$_WeatherResponse(
      queryCost: freezed == queryCost
          ? _value.queryCost
          : queryCost // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      resolvedAddress: null == resolvedAddress
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      tzoffset: null == tzoffset
          ? _value.tzoffset
          : tzoffset // ignore: cast_nullable_to_non_nullable
              as double,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayResult>,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<AlertResult>,
      stations: freezed == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as Map<String, StationResult>?,
      currentConditions: freezed == currentConditions
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as DayResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherResponse implements _WeatherResponse {
  _$_WeatherResponse(
      {this.queryCost = 0,
      this.latitude = 0,
      this.longitude = 0,
      this.resolvedAddress = "",
      this.address = "",
      this.timezone = "",
      this.tzoffset = 0,
      final List<DayResult> days = const [],
      final List<AlertResult> alerts = const [],
      final Map<String, StationResult>? stations,
      this.currentConditions})
      : _days = days,
        _alerts = alerts,
        _stations = stations;

  factory _$_WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseFromJson(json);

  @override
  @JsonKey()
  final int? queryCost;
  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;
  @override
  @JsonKey()
  final String resolvedAddress;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String timezone;
  @override
  @JsonKey()
  final double tzoffset;
  final List<DayResult> _days;
  @override
  @JsonKey()
  List<DayResult> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final List<AlertResult> _alerts;
  @override
  @JsonKey()
  List<AlertResult> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  final Map<String, StationResult>? _stations;
  @override
  Map<String, StationResult>? get stations {
    final value = _stations;
    if (value == null) return null;
    if (_stations is EqualUnmodifiableMapView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DayResult? currentConditions;

  @override
  String toString() {
    return 'WeatherResponse(queryCost: $queryCost, latitude: $latitude, longitude: $longitude, resolvedAddress: $resolvedAddress, address: $address, timezone: $timezone, tzoffset: $tzoffset, days: $days, alerts: $alerts, stations: $stations, currentConditions: $currentConditions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherResponse &&
            (identical(other.queryCost, queryCost) ||
                other.queryCost == queryCost) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.resolvedAddress, resolvedAddress) ||
                other.resolvedAddress == resolvedAddress) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.tzoffset, tzoffset) ||
                other.tzoffset == tzoffset) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            (identical(other.currentConditions, currentConditions) ||
                other.currentConditions == currentConditions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      queryCost,
      latitude,
      longitude,
      resolvedAddress,
      address,
      timezone,
      tzoffset,
      const DeepCollectionEquality().hash(_days),
      const DeepCollectionEquality().hash(_alerts),
      const DeepCollectionEquality().hash(_stations),
      currentConditions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherResponseCopyWith<_$_WeatherResponse> get copyWith =>
      __$$_WeatherResponseCopyWithImpl<_$_WeatherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherResponseToJson(
      this,
    );
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  factory _WeatherResponse(
      {final int? queryCost,
      final double latitude,
      final double longitude,
      final String resolvedAddress,
      final String address,
      final String timezone,
      final double tzoffset,
      final List<DayResult> days,
      final List<AlertResult> alerts,
      final Map<String, StationResult>? stations,
      final DayResult? currentConditions}) = _$_WeatherResponse;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponse.fromJson;

  @override
  int? get queryCost;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get resolvedAddress;
  @override
  String get address;
  @override
  String get timezone;
  @override
  double get tzoffset;
  @override
  List<DayResult> get days;
  @override
  List<AlertResult> get alerts;
  @override
  Map<String, StationResult>? get stations;
  @override
  DayResult? get currentConditions;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherResponseCopyWith<_$_WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
