import 'package:flutter/material.dart';

import '../../../core/constants/k_sizes.dart';

/// Main weather summary card with temperature, condition, and details.
class WeatherMainCardWidget extends StatelessWidget {
  const WeatherMainCardWidget({super.key});

  static const Color _primaryBlue = Color(0xFF1976D2);
  static const Color _sunYellow = Color(0xFFFFC107);
  static const Color _conditionGrey = Color(0xFF757575);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      elevation: KSizes.elevationCard,
      borderRadius: BorderRadius.circular(KSizes.radiusLarge),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(KSizes.margin6x),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wb_sunny, size: KSizes.iconXL, color: _sunYellow),
            SizedBox(height: KSizes.margin4x),
            Text(
              'New York',
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: KSizes.fontSizeXL,
                color: const Color(0xFF1A237E),
              ),
            ),
            SizedBox(height: KSizes.margin2x),
            Text(
              '72°F',
              style: textTheme.displaySmall?.copyWith(
                fontSize: KSizes.fontSizeTemp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1A237E),
              ),
            ),
            SizedBox(height: KSizes.margin2x),
            Text(
              'Sunny',
              style: TextStyle(
                fontSize: KSizes.fontSizeM,
                color: _conditionGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: KSizes.margin5x),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: _primaryBlue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size.fromHeight(KSizes.buttonHeight),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(KSizes.radiusSmall),
                  ),
                ),
                child: const Text(
                  'Switch to °C',
                  style: TextStyle(fontSize: KSizes.fontSizeM, fontWeight: FontWeight.w600),
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
                    label: 'Humidity: 65%',
                  ),
                ),
                Expanded(
                  child: _DetailItem(
                    icon: Icons.air,
                    label: 'Wind: 8 mph',
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
