import 'package:flutter/material.dart';

import '../../../core/constants/k_sizes.dart';

/// Top app bar with app title and cloud icon (fixed styling).
class WeatherHeaderBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const WeatherHeaderBarWidget({super.key});

  static const Color _headerBlue = Color(0xFF1976D2);

  @override
  Size get preferredSize => const Size.fromHeight(KSizes.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: _headerBlue,
      elevation: 0,
      centerTitle: false,
      titleSpacing: KSizes.margin4x,
      title: Row(
        children: [
          Icon(Icons.cloud_outlined, color: Colors.white, size: KSizes.iconHeader),
          SizedBox(width: KSizes.margin3x),
          const Text(
            'WeatherApp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: KSizes.fontSizeL,
            ),
          ),
        ],
      ),
    );
  }
}
