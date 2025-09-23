import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class DateDisplay extends StatelessWidget {
  final String gregorianDate;
  final String hijriDate;

  const DateDisplay({
    super.key,
    required this.gregorianDate,
    required this.hijriDate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          gregorianDate,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryText,
          ),
        ),
        SizedBox(height: 4),
        Text(
          hijriDate,
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