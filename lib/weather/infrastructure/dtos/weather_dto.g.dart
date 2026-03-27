// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => _WeatherDto(
  cityName: json['city_name'] as String? ?? '',
  temperatureFahrenheit:
      (json['temperature_fahrenheit'] as num?)?.toDouble() ?? 0.0,
  condition: json['condition'] as String? ?? '',
  humidityPercent: (json['humidity_percent'] as num?)?.toInt() ?? 0,
  windSpeedMph: (json['wind_speed_mph'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$WeatherDtoToJson(_WeatherDto instance) =>
    <String, dynamic>{
      'city_name': instance.cityName,
      'temperature_fahrenheit': instance.temperatureFahrenheit,
      'condition': instance.condition,
      'humidity_percent': instance.humidityPercent,
      'wind_speed_mph': instance.windSpeedMph,
    };
