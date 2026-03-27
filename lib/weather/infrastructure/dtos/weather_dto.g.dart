// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenWeatherCurrentDto _$OpenWeatherCurrentDtoFromJson(
  Map<String, dynamic> json,
) => _OpenWeatherCurrentDto(
  name: json['name'] as String,
  main: OpenWeatherMainDto.fromJson(json['main'] as Map<String, dynamic>),
  weather: (json['weather'] as List<dynamic>)
      .map((e) => OpenWeatherWeatherDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  wind: json['wind'] == null
      ? null
      : OpenWeatherWindDto.fromJson(json['wind'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OpenWeatherCurrentDtoToJson(
  _OpenWeatherCurrentDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'main': instance.main,
  'weather': instance.weather,
  'wind': instance.wind,
};

_OpenWeatherMainDto _$OpenWeatherMainDtoFromJson(Map<String, dynamic> json) =>
    _OpenWeatherMainDto(
      temp: (json['temp'] as num).toDouble(),
      humidity: (json['humidity'] as num).toInt(),
    );

Map<String, dynamic> _$OpenWeatherMainDtoToJson(_OpenWeatherMainDto instance) =>
    <String, dynamic>{'temp': instance.temp, 'humidity': instance.humidity};

_OpenWeatherWeatherDto _$OpenWeatherWeatherDtoFromJson(
  Map<String, dynamic> json,
) => _OpenWeatherWeatherDto(
  main: json['main'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$OpenWeatherWeatherDtoToJson(
  _OpenWeatherWeatherDto instance,
) => <String, dynamic>{
  'main': instance.main,
  'description': instance.description,
};

_OpenWeatherWindDto _$OpenWeatherWindDtoFromJson(Map<String, dynamic> json) =>
    _OpenWeatherWindDto(speed: (json['speed'] as num?)?.toDouble() ?? 0.0);

Map<String, dynamic> _$OpenWeatherWindDtoToJson(_OpenWeatherWindDto instance) =>
    <String, dynamic>{'speed': instance.speed};
