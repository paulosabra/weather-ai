import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/k_sizes.dart';
import '../../../core/data_state.dart';
import '../../domain/i_weather_service.dart';
import '../../domain/weather_model.dart';
import '../../application/weather_cubit.dart';

/// Main weather summary card: reads [WeatherState] from [WeatherCubit].
class WeatherMainCardWidget extends StatelessWidget {
  const WeatherMainCardWidget({super.key});

  static const Color _primaryBlue = Color(0xFF1976D2);
  static const Color _sunYellow = Color(0xFFFFC107);
  static const Color _conditionGrey = Color(0xFF757575);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        final weatherState = state.weather;

        if (weatherState.isInitialOrLoading) {
          return const _CardShell(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: KSizes.space12x),
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }

        if (weatherState.hasFailure) {
          final message = _messageForError(weatherState.error);
          return _CardShell(
            child: Padding(
              padding: EdgeInsets.all(KSizes.margin4x),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.error_outline, size: KSizes.iconL, color: Colors.red.shade400),
                  SizedBox(height: KSizes.margin3x),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: KSizes.fontSizeM,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: KSizes.margin4x),
                  FilledButton(
                    onPressed: () {
                      context.read<WeatherCubit>().loadWeather(state.selectedCityQuery);
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        }

        final model = weatherState.value;
        if (model == null) {
          return const SizedBox.shrink();
        }

        return _WeatherMainCardContent(
          model: model,
          temperatureUnit: state.temperatureUnit,
          primaryBlue: _primaryBlue,
          sunYellow: _sunYellow,
          conditionGrey: _conditionGrey,
        );
      },
    );
  }

  static String _messageForError(Object? error) {
    if (error is WeatherError) {
      switch (error) {
        case WeatherError.cityNotFound:
          return 'No weather data for that location.';
        case WeatherError.unavailable:
          return 'Weather is unavailable. Please try again.';
        case WeatherError.unknown:
          return 'Something went wrong.';
      }
    }
    return 'Something went wrong.';
  }
}

class _CardShell extends StatelessWidget {
  const _CardShell({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: KSizes.elevationCard,
      borderRadius: BorderRadius.circular(KSizes.radiusLarge),
      color: Colors.white,
      child: child,
    );
  }
}

class _WeatherMainCardContent extends StatelessWidget {
  const _WeatherMainCardContent({
    required this.model,
    required this.temperatureUnit,
    required this.primaryBlue,
    required this.sunYellow,
    required this.conditionGrey,
  });

  final WeatherModel model;
  final TemperatureUnit temperatureUnit;
  final Color primaryBlue;
  final Color sunYellow;
  final Color conditionGrey;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final conditionIcon = _iconForCondition(model.condition);

    return Material(
      elevation: KSizes.elevationCard,
      borderRadius: BorderRadius.circular(KSizes.radiusLarge),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(KSizes.margin6x),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(conditionIcon, size: KSizes.iconXL, color: sunYellow),
            SizedBox(height: KSizes.margin4x),
            Text(
              model.cityName,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: KSizes.fontSizeXL,
                color: const Color(0xFF1A237E),
              ),
            ),
            SizedBox(height: KSizes.margin2x),
            Text(
              _temperatureLabel(model.temperatureFahrenheit, temperatureUnit),
              style: textTheme.displaySmall?.copyWith(
                fontSize: KSizes.fontSizeTemp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1A237E),
              ),
            ),
            SizedBox(height: KSizes.margin2x),
            Text(
              model.condition,
              style: TextStyle(
                fontSize: KSizes.fontSizeM,
                color: conditionGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: KSizes.margin5x),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  context.read<WeatherCubit>().toggleTemperatureUnit();
                },
                style: FilledButton.styleFrom(
                  backgroundColor: primaryBlue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size.fromHeight(KSizes.buttonHeight),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(KSizes.radiusSmall),
                  ),
                ),
                child: Text(
                  temperatureUnit == TemperatureUnit.fahrenheit
                      ? 'Switch to °C'
                      : 'Switch to °F',
                  style: const TextStyle(
                    fontSize: KSizes.fontSizeM,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: KSizes.margin5x),
            Divider(height: KSizes.margin4x, thickness: KSizes.dividerThickness, color: Colors.grey.shade300),
            SizedBox(height: KSizes.margin3x),
            Row(
              children: [
                Expanded(
                  child: _DetailItem(
                    icon: Icons.thermostat,
                    label: 'Humidity: ${model.humidityPercent}%',
                  ),
                ),
                Expanded(
                  child: _DetailItem(
                    icon: Icons.air,
                    label: 'Wind: ${_formatMph(model.windSpeedMph)} mph',
                    alignEnd: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static String _temperatureLabel(double fahrenheit, TemperatureUnit unit) {
    if (unit == TemperatureUnit.fahrenheit) {
      return '${fahrenheit.round()}°F';
    }
    final celsius = (fahrenheit - 32) * 5 / 9;
    return '${celsius.round()}°C';
  }

  static IconData _iconForCondition(String condition) {
    final c = condition.toLowerCase();
    if (c.contains('rain')) {
      return Icons.umbrella;
    }
    if (c.contains('cloud') || c.contains('fog')) {
      return Icons.cloud;
    }
    return Icons.wb_sunny;
  }

  static String _formatMph(double mph) {
    if (mph == mph.roundToDouble()) {
      return mph.round().toString();
    }
    return mph.toStringAsFixed(1);
  }
}

class _DetailItem extends StatelessWidget {
  const _DetailItem({
    required this.icon,
    required this.label,
    this.alignEnd = false,
  });

  final IconData icon;
  final String label;
  final bool alignEnd;

  static const Color _iconBlue = Color(0xFF1976D2);

  @override
  Widget build(BuildContext context) {
    final row = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: KSizes.iconM, color: _iconBlue),
        SizedBox(width: KSizes.margin2x),
        Flexible(
          child: Text(
            label,
            style: const TextStyle(fontSize: KSizes.fontSizeS, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );

    if (alignEnd) {
      return Align(alignment: Alignment.centerRight, child: row);
    }
    return Align(alignment: Alignment.centerLeft, child: row);
  }
}
