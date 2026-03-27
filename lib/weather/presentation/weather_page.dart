import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants/k_sizes.dart';
import '../application/weather_cubit.dart';
import '../infrastructure/weather_service.dart';
import 'widgets/weather_city_dropdown_widget.dart';
import 'widgets/weather_header_bar_widget.dart';
import 'widgets/weather_main_card_widget.dart';

/// Weather home screen driven by [WeatherCubit].
class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  static const Color _scaffoldBackground = Color(0xFFF2F2F2);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WeatherCubit(WeatherService())..loadWeather('New York'),
      child: Scaffold(
        backgroundColor: _scaffoldBackground,
        appBar: const WeatherHeaderBarWidget(),
        body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(KSizes.margin4x),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: KSizes.margin3x),
                const WeatherCityDropdownWidget(),
                SizedBox(height: KSizes.margin6x),
                const WeatherMainCardWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
