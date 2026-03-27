// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherDto {

/// City display name (`city_name` in JSON).
@JsonKey(name: 'city_name') String get cityName;/// Air temperature in °F (`temperature_fahrenheit` in JSON).
@JsonKey(name: 'temperature_fahrenheit') double get temperatureFahrenheit;/// Short condition text (e.g. `"Sunny"`).
 String get condition;/// Relative humidity 0–100 (`humidity_percent` in JSON).
@JsonKey(name: 'humidity_percent') int get humidityPercent;/// Wind speed in mph (`wind_speed_mph` in JSON).
@JsonKey(name: 'wind_speed_mph') double get windSpeedMph;
/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDtoCopyWith<WeatherDto> get copyWith => _$WeatherDtoCopyWithImpl<WeatherDto>(this as WeatherDto, _$identity);

  /// Serializes this WeatherDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDto&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.temperatureFahrenheit, temperatureFahrenheit) || other.temperatureFahrenheit == temperatureFahrenheit)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.humidityPercent, humidityPercent) || other.humidityPercent == humidityPercent)&&(identical(other.windSpeedMph, windSpeedMph) || other.windSpeedMph == windSpeedMph));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityName,temperatureFahrenheit,condition,humidityPercent,windSpeedMph);

@override
String toString() {
  return 'WeatherDto(cityName: $cityName, temperatureFahrenheit: $temperatureFahrenheit, condition: $condition, humidityPercent: $humidityPercent, windSpeedMph: $windSpeedMph)';
}


}

/// @nodoc
abstract mixin class $WeatherDtoCopyWith<$Res>  {
  factory $WeatherDtoCopyWith(WeatherDto value, $Res Function(WeatherDto) _then) = _$WeatherDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'city_name') String cityName,@JsonKey(name: 'temperature_fahrenheit') double temperatureFahrenheit, String condition,@JsonKey(name: 'humidity_percent') int humidityPercent,@JsonKey(name: 'wind_speed_mph') double windSpeedMph
});




}
/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res>
    implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._self, this._then);

  final WeatherDto _self;
  final $Res Function(WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityName = null,Object? temperatureFahrenheit = null,Object? condition = null,Object? humidityPercent = null,Object? windSpeedMph = null,}) {
  return _then(_self.copyWith(
cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,temperatureFahrenheit: null == temperatureFahrenheit ? _self.temperatureFahrenheit : temperatureFahrenheit // ignore: cast_nullable_to_non_nullable
as double,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,humidityPercent: null == humidityPercent ? _self.humidityPercent : humidityPercent // ignore: cast_nullable_to_non_nullable
as int,windSpeedMph: null == windSpeedMph ? _self.windSpeedMph : windSpeedMph // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherDto].
extension WeatherDtoPatterns on WeatherDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherDto value)  $default,){
final _that = this;
switch (_that) {
case _WeatherDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherDto value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'city_name')  String cityName, @JsonKey(name: 'temperature_fahrenheit')  double temperatureFahrenheit,  String condition, @JsonKey(name: 'humidity_percent')  int humidityPercent, @JsonKey(name: 'wind_speed_mph')  double windSpeedMph)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.cityName,_that.temperatureFahrenheit,_that.condition,_that.humidityPercent,_that.windSpeedMph);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'city_name')  String cityName, @JsonKey(name: 'temperature_fahrenheit')  double temperatureFahrenheit,  String condition, @JsonKey(name: 'humidity_percent')  int humidityPercent, @JsonKey(name: 'wind_speed_mph')  double windSpeedMph)  $default,) {final _that = this;
switch (_that) {
case _WeatherDto():
return $default(_that.cityName,_that.temperatureFahrenheit,_that.condition,_that.humidityPercent,_that.windSpeedMph);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'city_name')  String cityName, @JsonKey(name: 'temperature_fahrenheit')  double temperatureFahrenheit,  String condition, @JsonKey(name: 'humidity_percent')  int humidityPercent, @JsonKey(name: 'wind_speed_mph')  double windSpeedMph)?  $default,) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.cityName,_that.temperatureFahrenheit,_that.condition,_that.humidityPercent,_that.windSpeedMph);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherDto extends WeatherDto {
  const _WeatherDto({@JsonKey(name: 'city_name') this.cityName = '', @JsonKey(name: 'temperature_fahrenheit') this.temperatureFahrenheit = 0.0, this.condition = '', @JsonKey(name: 'humidity_percent') this.humidityPercent = 0, @JsonKey(name: 'wind_speed_mph') this.windSpeedMph = 0.0}): super._();
  factory _WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);

/// City display name (`city_name` in JSON).
@override@JsonKey(name: 'city_name') final  String cityName;
/// Air temperature in °F (`temperature_fahrenheit` in JSON).
@override@JsonKey(name: 'temperature_fahrenheit') final  double temperatureFahrenheit;
/// Short condition text (e.g. `"Sunny"`).
@override@JsonKey() final  String condition;
/// Relative humidity 0–100 (`humidity_percent` in JSON).
@override@JsonKey(name: 'humidity_percent') final  int humidityPercent;
/// Wind speed in mph (`wind_speed_mph` in JSON).
@override@JsonKey(name: 'wind_speed_mph') final  double windSpeedMph;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDtoCopyWith<_WeatherDto> get copyWith => __$WeatherDtoCopyWithImpl<_WeatherDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDto&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.temperatureFahrenheit, temperatureFahrenheit) || other.temperatureFahrenheit == temperatureFahrenheit)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.humidityPercent, humidityPercent) || other.humidityPercent == humidityPercent)&&(identical(other.windSpeedMph, windSpeedMph) || other.windSpeedMph == windSpeedMph));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityName,temperatureFahrenheit,condition,humidityPercent,windSpeedMph);

@override
String toString() {
  return 'WeatherDto(cityName: $cityName, temperatureFahrenheit: $temperatureFahrenheit, condition: $condition, humidityPercent: $humidityPercent, windSpeedMph: $windSpeedMph)';
}


}

/// @nodoc
abstract mixin class _$WeatherDtoCopyWith<$Res> implements $WeatherDtoCopyWith<$Res> {
  factory _$WeatherDtoCopyWith(_WeatherDto value, $Res Function(_WeatherDto) _then) = __$WeatherDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'city_name') String cityName,@JsonKey(name: 'temperature_fahrenheit') double temperatureFahrenheit, String condition,@JsonKey(name: 'humidity_percent') int humidityPercent,@JsonKey(name: 'wind_speed_mph') double windSpeedMph
});




}
/// @nodoc
class __$WeatherDtoCopyWithImpl<$Res>
    implements _$WeatherDtoCopyWith<$Res> {
  __$WeatherDtoCopyWithImpl(this._self, this._then);

  final _WeatherDto _self;
  final $Res Function(_WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityName = null,Object? temperatureFahrenheit = null,Object? condition = null,Object? humidityPercent = null,Object? windSpeedMph = null,}) {
  return _then(_WeatherDto(
cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,temperatureFahrenheit: null == temperatureFahrenheit ? _self.temperatureFahrenheit : temperatureFahrenheit // ignore: cast_nullable_to_non_nullable
as double,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,humidityPercent: null == humidityPercent ? _self.humidityPercent : humidityPercent // ignore: cast_nullable_to_non_nullable
as int,windSpeedMph: null == windSpeedMph ? _self.windSpeedMph : windSpeedMph // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
