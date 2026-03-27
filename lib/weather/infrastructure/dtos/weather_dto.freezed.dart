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
mixin _$OpenWeatherCurrentDto {

/// City name from the API.
 String get name;/// Temperature, humidity, etc.
 OpenWeatherMainDto get main;/// Condition summaries (first entry used for display).
 List<OpenWeatherWeatherDto> get weather;/// Wind; may be absent in some edge responses.
 OpenWeatherWindDto? get wind;
/// Create a copy of OpenWeatherCurrentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenWeatherCurrentDtoCopyWith<OpenWeatherCurrentDto> get copyWith => _$OpenWeatherCurrentDtoCopyWithImpl<OpenWeatherCurrentDto>(this as OpenWeatherCurrentDto, _$identity);

  /// Serializes this OpenWeatherCurrentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenWeatherCurrentDto&&(identical(other.name, name) || other.name == name)&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other.weather, weather)&&(identical(other.wind, wind) || other.wind == wind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,main,const DeepCollectionEquality().hash(weather),wind);

@override
String toString() {
  return 'OpenWeatherCurrentDto(name: $name, main: $main, weather: $weather, wind: $wind)';
}


}

/// @nodoc
abstract mixin class $OpenWeatherCurrentDtoCopyWith<$Res>  {
  factory $OpenWeatherCurrentDtoCopyWith(OpenWeatherCurrentDto value, $Res Function(OpenWeatherCurrentDto) _then) = _$OpenWeatherCurrentDtoCopyWithImpl;
@useResult
$Res call({
 String name, OpenWeatherMainDto main, List<OpenWeatherWeatherDto> weather, OpenWeatherWindDto? wind
});


$OpenWeatherMainDtoCopyWith<$Res> get main;$OpenWeatherWindDtoCopyWith<$Res>? get wind;

}
/// @nodoc
class _$OpenWeatherCurrentDtoCopyWithImpl<$Res>
    implements $OpenWeatherCurrentDtoCopyWith<$Res> {
  _$OpenWeatherCurrentDtoCopyWithImpl(this._self, this._then);

  final OpenWeatherCurrentDto _self;
  final $Res Function(OpenWeatherCurrentDto) _then;

/// Create a copy of OpenWeatherCurrentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? main = null,Object? weather = null,Object? wind = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as OpenWeatherMainDto,weather: null == weather ? _self.weather : weather // ignore: cast_nullable_to_non_nullable
as List<OpenWeatherWeatherDto>,wind: freezed == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as OpenWeatherWindDto?,
  ));
}
/// Create a copy of OpenWeatherCurrentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenWeatherMainDtoCopyWith<$Res> get main {
  
  return $OpenWeatherMainDtoCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of OpenWeatherCurrentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenWeatherWindDtoCopyWith<$Res>? get wind {
    if (_self.wind == null) {
    return null;
  }

  return $OpenWeatherWindDtoCopyWith<$Res>(_self.wind!, (value) {
    return _then(_self.copyWith(wind: value));
  });
}
}


/// Adds pattern-matching-related methods to [OpenWeatherCurrentDto].
extension OpenWeatherCurrentDtoPatterns on OpenWeatherCurrentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenWeatherCurrentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenWeatherCurrentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenWeatherCurrentDto value)  $default,){
final _that = this;
switch (_that) {
case _OpenWeatherCurrentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenWeatherCurrentDto value)?  $default,){
final _that = this;
switch (_that) {
case _OpenWeatherCurrentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  OpenWeatherMainDto main,  List<OpenWeatherWeatherDto> weather,  OpenWeatherWindDto? wind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenWeatherCurrentDto() when $default != null:
return $default(_that.name,_that.main,_that.weather,_that.wind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  OpenWeatherMainDto main,  List<OpenWeatherWeatherDto> weather,  OpenWeatherWindDto? wind)  $default,) {final _that = this;
switch (_that) {
case _OpenWeatherCurrentDto():
return $default(_that.name,_that.main,_that.weather,_that.wind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  OpenWeatherMainDto main,  List<OpenWeatherWeatherDto> weather,  OpenWeatherWindDto? wind)?  $default,) {final _that = this;
switch (_that) {
case _OpenWeatherCurrentDto() when $default != null:
return $default(_that.name,_that.main,_that.weather,_that.wind);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenWeatherCurrentDto extends OpenWeatherCurrentDto {
  const _OpenWeatherCurrentDto({required this.name, required this.main, required final  List<OpenWeatherWeatherDto> weather, this.wind}): _weather = weather,super._();
  factory _OpenWeatherCurrentDto.fromJson(Map<String, dynamic> json) => _$OpenWeatherCurrentDtoFromJson(json);

/// City name from the API.
@override final  String name;
/// Temperature, humidity, etc.
@override final  OpenWeatherMainDto main;
/// Condition summaries (first entry used for display).
 final  List<OpenWeatherWeatherDto> _weather;
/// Condition summaries (first entry used for display).
@override List<OpenWeatherWeatherDto> get weather {
  if (_weather is EqualUnmodifiableListView) return _weather;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weather);
}

/// Wind; may be absent in some edge responses.
@override final  OpenWeatherWindDto? wind;

/// Create a copy of OpenWeatherCurrentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenWeatherCurrentDtoCopyWith<_OpenWeatherCurrentDto> get copyWith => __$OpenWeatherCurrentDtoCopyWithImpl<_OpenWeatherCurrentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenWeatherCurrentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenWeatherCurrentDto&&(identical(other.name, name) || other.name == name)&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other._weather, _weather)&&(identical(other.wind, wind) || other.wind == wind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,main,const DeepCollectionEquality().hash(_weather),wind);

@override
String toString() {
  return 'OpenWeatherCurrentDto(name: $name, main: $main, weather: $weather, wind: $wind)';
}


}

/// @nodoc
abstract mixin class _$OpenWeatherCurrentDtoCopyWith<$Res> implements $OpenWeatherCurrentDtoCopyWith<$Res> {
  factory _$OpenWeatherCurrentDtoCopyWith(_OpenWeatherCurrentDto value, $Res Function(_OpenWeatherCurrentDto) _then) = __$OpenWeatherCurrentDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, OpenWeatherMainDto main, List<OpenWeatherWeatherDto> weather, OpenWeatherWindDto? wind
});


@override $OpenWeatherMainDtoCopyWith<$Res> get main;@override $OpenWeatherWindDtoCopyWith<$Res>? get wind;

}
/// @nodoc
class __$OpenWeatherCurrentDtoCopyWithImpl<$Res>
    implements _$OpenWeatherCurrentDtoCopyWith<$Res> {
  __$OpenWeatherCurrentDtoCopyWithImpl(this._self, this._then);

  final _OpenWeatherCurrentDto _self;
  final $Res Function(_OpenWeatherCurrentDto) _then;

/// Create a copy of OpenWeatherCurrentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? main = null,Object? weather = null,Object? wind = freezed,}) {
  return _then(_OpenWeatherCurrentDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as OpenWeatherMainDto,weather: null == weather ? _self._weather : weather // ignore: cast_nullable_to_non_nullable
as List<OpenWeatherWeatherDto>,wind: freezed == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as OpenWeatherWindDto?,
  ));
}

/// Create a copy of OpenWeatherCurrentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenWeatherMainDtoCopyWith<$Res> get main {
  
  return $OpenWeatherMainDtoCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of OpenWeatherCurrentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenWeatherWindDtoCopyWith<$Res>? get wind {
    if (_self.wind == null) {
    return null;
  }

  return $OpenWeatherWindDtoCopyWith<$Res>(_self.wind!, (value) {
    return _then(_self.copyWith(wind: value));
  });
}
}


/// @nodoc
mixin _$OpenWeatherMainDto {

/// Air temperature (°F when `units=imperial`).
 double get temp;/// Relative humidity 0–100.
 int get humidity;
/// Create a copy of OpenWeatherMainDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenWeatherMainDtoCopyWith<OpenWeatherMainDto> get copyWith => _$OpenWeatherMainDtoCopyWithImpl<OpenWeatherMainDto>(this as OpenWeatherMainDto, _$identity);

  /// Serializes this OpenWeatherMainDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenWeatherMainDto&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,humidity);

@override
String toString() {
  return 'OpenWeatherMainDto(temp: $temp, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class $OpenWeatherMainDtoCopyWith<$Res>  {
  factory $OpenWeatherMainDtoCopyWith(OpenWeatherMainDto value, $Res Function(OpenWeatherMainDto) _then) = _$OpenWeatherMainDtoCopyWithImpl;
@useResult
$Res call({
 double temp, int humidity
});




}
/// @nodoc
class _$OpenWeatherMainDtoCopyWithImpl<$Res>
    implements $OpenWeatherMainDtoCopyWith<$Res> {
  _$OpenWeatherMainDtoCopyWithImpl(this._self, this._then);

  final OpenWeatherMainDto _self;
  final $Res Function(OpenWeatherMainDto) _then;

/// Create a copy of OpenWeatherMainDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temp = null,Object? humidity = null,}) {
  return _then(_self.copyWith(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenWeatherMainDto].
extension OpenWeatherMainDtoPatterns on OpenWeatherMainDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenWeatherMainDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenWeatherMainDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenWeatherMainDto value)  $default,){
final _that = this;
switch (_that) {
case _OpenWeatherMainDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenWeatherMainDto value)?  $default,){
final _that = this;
switch (_that) {
case _OpenWeatherMainDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double temp,  int humidity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenWeatherMainDto() when $default != null:
return $default(_that.temp,_that.humidity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double temp,  int humidity)  $default,) {final _that = this;
switch (_that) {
case _OpenWeatherMainDto():
return $default(_that.temp,_that.humidity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double temp,  int humidity)?  $default,) {final _that = this;
switch (_that) {
case _OpenWeatherMainDto() when $default != null:
return $default(_that.temp,_that.humidity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenWeatherMainDto implements OpenWeatherMainDto {
  const _OpenWeatherMainDto({required this.temp, required this.humidity});
  factory _OpenWeatherMainDto.fromJson(Map<String, dynamic> json) => _$OpenWeatherMainDtoFromJson(json);

/// Air temperature (°F when `units=imperial`).
@override final  double temp;
/// Relative humidity 0–100.
@override final  int humidity;

/// Create a copy of OpenWeatherMainDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenWeatherMainDtoCopyWith<_OpenWeatherMainDto> get copyWith => __$OpenWeatherMainDtoCopyWithImpl<_OpenWeatherMainDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenWeatherMainDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenWeatherMainDto&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,humidity);

@override
String toString() {
  return 'OpenWeatherMainDto(temp: $temp, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class _$OpenWeatherMainDtoCopyWith<$Res> implements $OpenWeatherMainDtoCopyWith<$Res> {
  factory _$OpenWeatherMainDtoCopyWith(_OpenWeatherMainDto value, $Res Function(_OpenWeatherMainDto) _then) = __$OpenWeatherMainDtoCopyWithImpl;
@override @useResult
$Res call({
 double temp, int humidity
});




}
/// @nodoc
class __$OpenWeatherMainDtoCopyWithImpl<$Res>
    implements _$OpenWeatherMainDtoCopyWith<$Res> {
  __$OpenWeatherMainDtoCopyWithImpl(this._self, this._then);

  final _OpenWeatherMainDto _self;
  final $Res Function(_OpenWeatherMainDto) _then;

/// Create a copy of OpenWeatherMainDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temp = null,Object? humidity = null,}) {
  return _then(_OpenWeatherMainDto(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OpenWeatherWeatherDto {

 String get main; String get description;
/// Create a copy of OpenWeatherWeatherDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenWeatherWeatherDtoCopyWith<OpenWeatherWeatherDto> get copyWith => _$OpenWeatherWeatherDtoCopyWithImpl<OpenWeatherWeatherDto>(this as OpenWeatherWeatherDto, _$identity);

  /// Serializes this OpenWeatherWeatherDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenWeatherWeatherDto&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,description);

@override
String toString() {
  return 'OpenWeatherWeatherDto(main: $main, description: $description)';
}


}

/// @nodoc
abstract mixin class $OpenWeatherWeatherDtoCopyWith<$Res>  {
  factory $OpenWeatherWeatherDtoCopyWith(OpenWeatherWeatherDto value, $Res Function(OpenWeatherWeatherDto) _then) = _$OpenWeatherWeatherDtoCopyWithImpl;
@useResult
$Res call({
 String main, String description
});




}
/// @nodoc
class _$OpenWeatherWeatherDtoCopyWithImpl<$Res>
    implements $OpenWeatherWeatherDtoCopyWith<$Res> {
  _$OpenWeatherWeatherDtoCopyWithImpl(this._self, this._then);

  final OpenWeatherWeatherDto _self;
  final $Res Function(OpenWeatherWeatherDto) _then;

/// Create a copy of OpenWeatherWeatherDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = null,Object? description = null,}) {
  return _then(_self.copyWith(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenWeatherWeatherDto].
extension OpenWeatherWeatherDtoPatterns on OpenWeatherWeatherDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenWeatherWeatherDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenWeatherWeatherDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenWeatherWeatherDto value)  $default,){
final _that = this;
switch (_that) {
case _OpenWeatherWeatherDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenWeatherWeatherDto value)?  $default,){
final _that = this;
switch (_that) {
case _OpenWeatherWeatherDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String main,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenWeatherWeatherDto() when $default != null:
return $default(_that.main,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String main,  String description)  $default,) {final _that = this;
switch (_that) {
case _OpenWeatherWeatherDto():
return $default(_that.main,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String main,  String description)?  $default,) {final _that = this;
switch (_that) {
case _OpenWeatherWeatherDto() when $default != null:
return $default(_that.main,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenWeatherWeatherDto implements OpenWeatherWeatherDto {
  const _OpenWeatherWeatherDto({required this.main, required this.description});
  factory _OpenWeatherWeatherDto.fromJson(Map<String, dynamic> json) => _$OpenWeatherWeatherDtoFromJson(json);

@override final  String main;
@override final  String description;

/// Create a copy of OpenWeatherWeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenWeatherWeatherDtoCopyWith<_OpenWeatherWeatherDto> get copyWith => __$OpenWeatherWeatherDtoCopyWithImpl<_OpenWeatherWeatherDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenWeatherWeatherDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenWeatherWeatherDto&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,description);

@override
String toString() {
  return 'OpenWeatherWeatherDto(main: $main, description: $description)';
}


}

/// @nodoc
abstract mixin class _$OpenWeatherWeatherDtoCopyWith<$Res> implements $OpenWeatherWeatherDtoCopyWith<$Res> {
  factory _$OpenWeatherWeatherDtoCopyWith(_OpenWeatherWeatherDto value, $Res Function(_OpenWeatherWeatherDto) _then) = __$OpenWeatherWeatherDtoCopyWithImpl;
@override @useResult
$Res call({
 String main, String description
});




}
/// @nodoc
class __$OpenWeatherWeatherDtoCopyWithImpl<$Res>
    implements _$OpenWeatherWeatherDtoCopyWith<$Res> {
  __$OpenWeatherWeatherDtoCopyWithImpl(this._self, this._then);

  final _OpenWeatherWeatherDto _self;
  final $Res Function(_OpenWeatherWeatherDto) _then;

/// Create a copy of OpenWeatherWeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = null,Object? description = null,}) {
  return _then(_OpenWeatherWeatherDto(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OpenWeatherWindDto {

/// Wind speed (mph when `units=imperial`).
 double get speed;
/// Create a copy of OpenWeatherWindDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenWeatherWindDtoCopyWith<OpenWeatherWindDto> get copyWith => _$OpenWeatherWindDtoCopyWithImpl<OpenWeatherWindDto>(this as OpenWeatherWindDto, _$identity);

  /// Serializes this OpenWeatherWindDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenWeatherWindDto&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed);

@override
String toString() {
  return 'OpenWeatherWindDto(speed: $speed)';
}


}

/// @nodoc
abstract mixin class $OpenWeatherWindDtoCopyWith<$Res>  {
  factory $OpenWeatherWindDtoCopyWith(OpenWeatherWindDto value, $Res Function(OpenWeatherWindDto) _then) = _$OpenWeatherWindDtoCopyWithImpl;
@useResult
$Res call({
 double speed
});




}
/// @nodoc
class _$OpenWeatherWindDtoCopyWithImpl<$Res>
    implements $OpenWeatherWindDtoCopyWith<$Res> {
  _$OpenWeatherWindDtoCopyWithImpl(this._self, this._then);

  final OpenWeatherWindDto _self;
  final $Res Function(OpenWeatherWindDto) _then;

/// Create a copy of OpenWeatherWindDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speed = null,}) {
  return _then(_self.copyWith(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenWeatherWindDto].
extension OpenWeatherWindDtoPatterns on OpenWeatherWindDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenWeatherWindDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenWeatherWindDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenWeatherWindDto value)  $default,){
final _that = this;
switch (_that) {
case _OpenWeatherWindDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenWeatherWindDto value)?  $default,){
final _that = this;
switch (_that) {
case _OpenWeatherWindDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double speed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenWeatherWindDto() when $default != null:
return $default(_that.speed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double speed)  $default,) {final _that = this;
switch (_that) {
case _OpenWeatherWindDto():
return $default(_that.speed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double speed)?  $default,) {final _that = this;
switch (_that) {
case _OpenWeatherWindDto() when $default != null:
return $default(_that.speed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenWeatherWindDto implements OpenWeatherWindDto {
  const _OpenWeatherWindDto({this.speed = 0.0});
  factory _OpenWeatherWindDto.fromJson(Map<String, dynamic> json) => _$OpenWeatherWindDtoFromJson(json);

/// Wind speed (mph when `units=imperial`).
@override@JsonKey() final  double speed;

/// Create a copy of OpenWeatherWindDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenWeatherWindDtoCopyWith<_OpenWeatherWindDto> get copyWith => __$OpenWeatherWindDtoCopyWithImpl<_OpenWeatherWindDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenWeatherWindDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenWeatherWindDto&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed);

@override
String toString() {
  return 'OpenWeatherWindDto(speed: $speed)';
}


}

/// @nodoc
abstract mixin class _$OpenWeatherWindDtoCopyWith<$Res> implements $OpenWeatherWindDtoCopyWith<$Res> {
  factory _$OpenWeatherWindDtoCopyWith(_OpenWeatherWindDto value, $Res Function(_OpenWeatherWindDto) _then) = __$OpenWeatherWindDtoCopyWithImpl;
@override @useResult
$Res call({
 double speed
});




}
/// @nodoc
class __$OpenWeatherWindDtoCopyWithImpl<$Res>
    implements _$OpenWeatherWindDtoCopyWith<$Res> {
  __$OpenWeatherWindDtoCopyWithImpl(this._self, this._then);

  final _OpenWeatherWindDto _self;
  final $Res Function(_OpenWeatherWindDto) _then;

/// Create a copy of OpenWeatherWindDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speed = null,}) {
  return _then(_OpenWeatherWindDto(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
