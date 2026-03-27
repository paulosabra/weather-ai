import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/weather_model.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

/// Wire format for a weather API response (snake_case JSON keys).
@freezed
abstract class WeatherDto with _$WeatherDto {
  const WeatherDto._();

  const factory WeatherDto({
    /// City display name (`city_name` in JSON).
    @Default('')
    @JsonKey(name: 'city_name')
    String cityName,

    /// Air temperature in °F (`temperature_fahrenheit` in JSON).
    @Default(0.0)
    @JsonKey(name: 'temperature_fahrenheit')
    double temperatureFahrenheit,

    /// Short condition text (e.g. `"Sunny"`).
    @Default('') String condition,

    /// Relative humidity 0–100 (`humidity_percent` in JSON).
    @Default(0)
    @JsonKey(name: 'humidity_percent')
    int humidityPercent,

    /// Wind speed in mph (`wind_speed_mph` in JSON).
    @Default(0.0)
    @JsonKey(name: 'wind_speed_mph')
    double windSpeedMph,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);

  /// Maps this DTO to the domain [WeatherModel].
  WeatherModel toDomain() => WeatherModel(
        cityName: cityName,
        temperatureFahrenheit: temperatureFahrenheit,
        condition: condition,
        humidityPercent: humidityPercent,
        windSpeedMph: windSpeedMph,
      );
}
