import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/weather_model.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

/// OpenWeatherMap [current weather](https://openweathermap.org/current) JSON root.
@freezed
abstract class OpenWeatherCurrentDto with _$OpenWeatherCurrentDto {
  const OpenWeatherCurrentDto._();

  const factory OpenWeatherCurrentDto({
    /// City name from the API.
    required String name,

    /// Temperature, humidity, etc.
    required OpenWeatherMainDto main,

    /// Condition summaries (first entry used for display).
    required List<OpenWeatherWeatherDto> weather,

    /// Wind; may be absent in some edge responses.
    OpenWeatherWindDto? wind,
  }) = _OpenWeatherCurrentDto;

  factory OpenWeatherCurrentDto.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherCurrentDtoFromJson(json);

  /// Maps OpenWeather response fields to [WeatherModel] (imperial: °F, mph).
  WeatherModel toDomain() {
    final conditionText = weather.isNotEmpty
        ? _titleCaseWords(weather.first.description)
        : '';
    return WeatherModel(
      cityName: name,
      temperatureFahrenheit: main.temp,
      condition: conditionText,
      humidityPercent: main.humidity,
      windSpeedMph: wind?.speed ?? 0.0,
    );
  }

  static String _titleCaseWords(String raw) {
    if (raw.isEmpty) {
      return raw;
    }
    return raw
        .split(' ')
        .map(
          (w) => w.isEmpty
              ? w
              : '${w[0].toUpperCase()}${w.substring(1).toLowerCase()}',
        )
        .join(' ');
  }
}

/// `main` object from OpenWeather current weather.
@freezed
abstract class OpenWeatherMainDto with _$OpenWeatherMainDto {
  const factory OpenWeatherMainDto({
    /// Air temperature (°F when `units=imperial`).
    required double temp,

    /// Relative humidity 0–100.
    required int humidity,
  }) = _OpenWeatherMainDto;

  factory OpenWeatherMainDto.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherMainDtoFromJson(json);
}

/// One element of the `weather` array.
@freezed
abstract class OpenWeatherWeatherDto with _$OpenWeatherWeatherDto {
  const factory OpenWeatherWeatherDto({
    required String main,
    required String description,
  }) = _OpenWeatherWeatherDto;

  factory OpenWeatherWeatherDto.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherWeatherDtoFromJson(json);
}

/// `wind` object from OpenWeather current weather.
@freezed
abstract class OpenWeatherWindDto with _$OpenWeatherWindDto {
  const factory OpenWeatherWindDto({
    /// Wind speed (mph when `units=imperial`).
    @Default(0.0) double speed,
  }) = _OpenWeatherWindDto;

  factory OpenWeatherWindDto.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherWindDtoFromJson(json);
}
