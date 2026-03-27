import 'package:result_type/result_type.dart';

import 'weather_model.dart';

/// Domain failures when fetching [WeatherModel] data.
enum WeatherError implements Exception {
  /// No weather data exists for the requested city or query.
  cityNotFound,

  /// Network, timeout, or upstream service failure.
  unavailable,

  /// Failure that does not fit the other cases.
  unknown,
}

/// Contract for loading weather for a location.
abstract class IWeatherService {
  /// Returns current weather for [cityQuery] (e.g. city name or place id).
  ///
  /// Returns [Success] with [WeatherModel] when data is available.
  ///
  /// Returns [Failure] with [WeatherError.cityNotFound] when the location
  /// cannot be resolved or has no forecast.
  ///
  /// Returns [Failure] with [WeatherError.unavailable] when the request
  /// fails due to connectivity or server errors.
  ///
  /// Returns [Failure] with [WeatherError.unknown] for other failures.
  Future<Result<WeatherModel, WeatherError>> getWeather({
    required String cityQuery,
  });
}
