import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/k_sizes.dart';
import '../../application/weather_cubit.dart';

/// City selector; options load weather via [WeatherCubit].
class WeatherCityDropdownWidget extends StatelessWidget {
  const WeatherCityDropdownWidget({super.key});

  static const Color _dropdownFill = Color(0xFFE8E8E8);

  static const List<String> _cities = [
    'New York',
    'San Francisco',
    'London',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      buildWhen: (prev, next) =>
          prev.selectedCityQuery != next.selectedCityQuery,
      builder: (context, state) {
        final selected = state.selectedCityQuery;

        return Container(
          height: KSizes.dropdownHeight,
          padding: EdgeInsets.symmetric(horizontal: KSizes.margin4x),
          decoration: BoxDecoration(
            color: _dropdownFill,
            borderRadius: BorderRadius.circular(KSizes.radiusDefault),
          ),
          child: Row(
            children: [
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: _cities.contains(selected) ? selected : _cities.first,
                    icon: Icon(
                      Icons.unfold_more,
                      size: KSizes.iconM,
                      color: Colors.grey.shade700,
                    ),
                    style: TextStyle(
                      fontSize: KSizes.fontSizeM,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    items: _cities
                        .map(
                          (city) => DropdownMenuItem<String>(
                            value: city,
                            child: Text(city),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (value != null) {
                        context.read<WeatherCubit>().loadWeather(value);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
