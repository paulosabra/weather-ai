import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:result_type/result_type.dart';

import '../../core/data_state.dart';
import '../domain/i_weather_service.dart';
import '../domain/weather_model.dart';
import 'weather_state.dart';

export 'weather_state.dart';

/// Loads [WeatherModel] via [IWeatherService] for the selected city.
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._weatherService)
      : super(
          const WeatherState(
            selectedCityQuery: 'New York',
            weather: DataState<WeatherModel>.initial(),
          ),
        );

  final IWeatherService _weatherService;

  /// Toggles main-card temperature between Fahrenheit and Celsius.
  void toggleTemperatureUnit() {
    final next = state.temperatureUnit == TemperatureUnit.fahrenheit
        ? TemperatureUnit.celsius
        : TemperatureUnit.fahrenheit;
    emit(state.copyWith(temperatureUnit: next));
  }

  /// Fetches weather for [cityQuery] and updates [WeatherState.weather].
  Future<void> loadWeather(String cityQuery) async {
    final q = cityQuery.trim();
    if (q.isEmpty) {
      return;
    }

    emit(
      state.copyWith(
        selectedCityQuery: q,
        weather: const DataState<WeatherModel>.loading(),
      ),
    );

    final Result<WeatherModel, WeatherError> result =
        await _weatherService.getWeather(cityQuery: q);

    if (isClosed) {
      return;
    }

    result.result(
      (model) {
        emit(
          WeatherState(
            selectedCityQuery: q,
            weather: DataState<WeatherModel>.success(value: model),
            temperatureUnit: state.temperatureUnit,
          ),
        );
      },
      (error) {
        emit(
          WeatherState(
            selectedCityQuery: q,
            weather: DataState<WeatherModel>.failure(error: error),
            temperatureUnit: state.temperatureUnit,
          ),
        );
      },
    );
  }
}
