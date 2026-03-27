import 'package:result_type/result_type.dart';

import '../domain/i_weather_service.dart';
import '../domain/weather_model.dart';
import 'dtos/weather_dto.dart';

/// Mock [IWeatherService] that returns canned JSON via [WeatherDto]; no network.
class WeatherService implements IWeatherService {
  @override
  Future<Result<WeatherModel, WeatherError>> getWeather({
    required String cityQuery,
  }) async {
    final trimmed = cityQuery.trim();
    if (trimmed.isEmpty) {
      return Failure(WeatherError.cityNotFound);
    }

    final json = _mockJsonFor(trimmed);
    final dto = WeatherDto.fromJson(json);
    return Success(dto.toDomain());
  }

  /// Preset mock payloads keyed by lowercased city query.
  static const Map<String, Map<String, dynamic>> _presets = {
    'new york': {
      'city_name': 'New York',
      'temperature_fahrenheit': 72.0,
      'condition': 'Partly cloudy',
      'humidity_percent': 58,
      'wind_speed_mph': 9.5,
    },
    'san francisco': {
      'city_name': 'San Francisco',
      'temperature_fahrenheit': 61.0,
      'condition': 'Foggy',
      'humidity_percent': 82,
      'wind_speed_mph': 12.0,
    },
    'london': {
      'city_name': 'London',
      'temperature_fahrenheit': 52.0,
      'condition': 'Rainy',
      'humidity_percent': 91,
      'wind_speed_mph': 15.0,
    },
  };

  static Map<String, dynamic> _mockJsonFor(String cityQuery) {
    final key = cityQuery.toLowerCase();
    final preset = _presets[key];
    if (preset != null) {
      return Map<String, dynamic>.from(preset);
    }

    final displayName = _displayNameForQuery(cityQuery);
    final seed = cityQuery.codeUnits.fold<int>(0, (a, b) => a + b);
    return {
      'city_name': displayName,
      'temperature_fahrenheit': 65.0 + (seed % 18),
      'condition': 'Sunny',
      'humidity_percent': 40 + (seed % 40),
      'wind_speed_mph': 4.0 + (seed % 12),
    };
  }

  static String _displayNameForQuery(String cityQuery) {
    final parts = cityQuery.split(RegExp(r'\s+'));
    return parts
        .where((p) => p.isNotEmpty)
        .map(
          (w) =>
              '${w.substring(0, 1).toUpperCase()}${w.substring(1).toLowerCase()}',
        )
        .join(' ');
  }
}
