import 'package:flutter/material.dart';

import '../../../core/constants/k_sizes.dart';

/// City selector styled as a dropdown (fixed label for now).
class WeatherCityDropdownWidget extends StatelessWidget {
  const WeatherCityDropdownWidget({super.key});

  static const Color _dropdownFill = Color(0xFFE8E8E8);

  @override
  Widget build(BuildContext context) {
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
            child: Text(
              'New York',
              style: TextStyle(
                fontSize: KSizes.fontSizeM,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
          Icon(Icons.unfold_more, size: KSizes.iconM, color: Colors.grey.shade700),
        ],
      ),
    );
  }
}
