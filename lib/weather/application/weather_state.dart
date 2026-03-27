import 'package:flutter/foundation.dart';

import '../../core/data_state.dart';
import '../domain/weather_model.dart';

/// Temperature scale for displaying [WeatherModel.temperatureFahrenheit].
enum TemperatureUnit {
  fahrenheit,
  celsius,
}

/// Selected location query plus async [WeatherModel] load status for the UI.
@immutable
class WeatherState {
  const WeatherState({
    required this.selectedCityQuery,
    required this.weather,
    this.temperatureUnit = TemperatureUnit.fahrenheit,
  });

  final String selectedCityQuery;
  final DataState<WeatherModel> weather;

  /// How to show temperature in the main card (domain still stores °F).
  final TemperatureUnit temperatureUnit;

  WeatherState copyWith({
    String? selectedCityQuery,
    DataState<WeatherModel>? weather,
    TemperatureUnit? temperatureUnit,
  }) {
    return WeatherState(
      selectedCityQuery: selectedCityQuery ?? this.selectedCityQuery,
      weather: weather ?? this.weather,
      temperatureUnit: temperatureUnit ?? this.temperatureUnit,
    );
  }
}
