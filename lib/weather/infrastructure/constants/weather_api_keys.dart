import 'package:flutter_dotenv/flutter_dotenv.dart';

/// OpenWeatherMap API configuration.
///
/// Set `OPENWEATHER_API_KEY` in the project root `.env` (loaded at startup).
/// Optionally override with `--dart-define=OPENWEATHER_API_KEY=...`.
///
/// Create a free key at https://openweathermap.org/api
abstract final class WeatherApiKeys {
  WeatherApiKeys._();

  static const String _baseUrl = 'https://api.openweathermap.org/data/2.5';

  /// Current weather endpoint path (joined with [_baseUrl]).
  static const String currentWeatherPath = '/weather';

  /// API key from `.env` or compile-time `OPENWEATHER_API_KEY`.
  static String get apiKey {
    final fromEnv = dotenv.env['OPENWEATHER_API_KEY']?.trim();
    if (fromEnv != null && fromEnv.isNotEmpty) {
      return fromEnv;
    }
    return const String.fromEnvironment(
      'OPENWEATHER_API_KEY',
      defaultValue: '',
    );
  }

  /// `GET` URL for current weather by city name; uses imperial (°F, mph).
  static Uri currentWeatherUri(String cityQuery) {
    return Uri.parse('$_baseUrl$currentWeatherPath').replace(
      queryParameters: <String, String>{
        'q': cityQuery,
        'appid': apiKey,
        'units': 'imperial',
      },
    );
  }
}
