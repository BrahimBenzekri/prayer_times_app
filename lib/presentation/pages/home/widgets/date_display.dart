import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class DateDisplay extends StatelessWidget {
  const DateDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'September 20, 2025',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryText,
          ),
        ),
        SizedBox(height: 4),
        Text(
          '19 Safar 1447 AH',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.islamicGreen,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}