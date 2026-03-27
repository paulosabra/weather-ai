import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:result_type/result_type.dart';

import '../domain/i_weather_service.dart';
import '../domain/weather_model.dart';
import 'constants/weather_api_keys.dart';
import 'dtos/weather_dto.dart';

/// [IWeatherService] backed by [OpenWeatherMap](https://openweathermap.org/api).
class WeatherService implements IWeatherService {
  static const Duration _requestTimeout = Duration(seconds: 20);

  @override
  Future<Result<WeatherModel, WeatherError>> getWeather({
    required String cityQuery,
  }) async {
    final trimmed = cityQuery.trim();
    if (trimmed.isEmpty) {
      return Failure(WeatherError.cityNotFound);
    }
    if (WeatherApiKeys.apiKey.isEmpty) {
      return Failure(WeatherError.unavailable);
    }

    final uri = WeatherApiKeys.currentWeatherUri(trimmed);

    try {
      final response = await http.get(uri).timeout(_requestTimeout);
      final body = response.body;

      if (response.statusCode == 404) {
        return Failure(WeatherError.cityNotFound);
      }

      if (response.statusCode == 401 || response.statusCode == 403) {
        return Failure(WeatherError.unavailable);
      }

      if (response.statusCode != 200) {
        return Failure(WeatherError.unavailable);
      }

      final Object? decoded = jsonDecode(body);
      if (decoded is! Map<String, dynamic>) {
        return Failure(WeatherError.unknown);
      }

      final cod = decoded['cod'];
      if (cod == '404' || cod == 404) {
        return Failure(WeatherError.cityNotFound);
      }

      final dto = OpenWeatherCurrentDto.fromJson(decoded);
      return Success(dto.toDomain());
    } on TimeoutException {
      return Failure(WeatherError.unavailable);
    } on http.ClientException {
      return Failure(WeatherError.unavailable);
    } on FormatException {
      return Failure(WeatherError.unknown);
    } catch (_) {
      return Failure(WeatherError.unknown);
    }
  }
}
