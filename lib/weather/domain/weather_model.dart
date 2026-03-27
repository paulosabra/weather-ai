import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';

/// Snapshot of weather conditions for a single location.
@freezed
abstract class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    /// Human-readable city name shown in the UI (e.g. "New York").
    @Default('') String cityName,

    /// Air temperature in degrees Fahrenheit.
    @Default(0.0) double temperatureFahrenheit,

    /// Short condition label (e.g. "Sunny").
    @Default('') String condition,

    /// Relative humidity as a percentage from 0 through 100.
    @Default(0) int humidityPercent,

    /// Wind speed in miles per hour.
    @Default(0.0) double windSpeedMph,
  }) = _WeatherModel;
}
