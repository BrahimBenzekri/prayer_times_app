import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class PrayerTimesList extends StatelessWidget {
  const PrayerTimesList({super.key});

  @override
  Widget build(BuildContext context) {
    final prayerTimes = [
      PrayerTime('Fajr', '05:35 AM', false),
      PrayerTime('Dhuhr', '12:45 PM', false),
      PrayerTime('Asr', '02:40 PM', true), // Current prayer
      PrayerTime('Maggrih', '06:01 PM', false),
      PrayerTime('Isha', '07:30 PM', false),
    ];

    return Column(
      children: prayerTimes.map((prayer) => PrayerTimeItem(prayer: prayer)).toList(),
    );
  }
}

class PrayerTime {
  final String name;
  final String time;
  final bool isCurrent;

  PrayerTime(this.name, this.time, this.isCurrent);
}

class PrayerTimeItem extends StatelessWidget {
  final PrayerTime prayer;

  const PrayerTimeItem({super.key, required this.prayer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.pureWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryText.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            prayer.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
            ),
          ),
          Row(
            children: [
              Text(
                prayer.time,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              if (prayer.isCurrent) ...[
                SizedBox(width: 8),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: AppColors.islamicGold,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}