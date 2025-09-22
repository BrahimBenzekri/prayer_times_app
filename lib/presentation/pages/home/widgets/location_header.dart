import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: AppColors.islamicGreen,
          size: 20,
        ),
        SizedBox(width: 8),
        Text(
          'New York City',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.secondaryText,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}