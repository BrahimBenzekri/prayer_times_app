import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class NextPrayerBanner extends StatelessWidget {
  const NextPrayerBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.islamicGold, AppColors.lightGold],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            'Next Prayer: Asr',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryText,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'in 2 hours and 15 minutes',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.primaryText,
            ),
          ),
        ],
      ),
    );
  }
}