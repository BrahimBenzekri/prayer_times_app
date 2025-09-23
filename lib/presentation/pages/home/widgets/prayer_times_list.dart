import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../data/models/prayer_times_model.dart';

class PrayerTimesList extends StatelessWidget {
  final Timings prayerTimes;

  const PrayerTimesList({super.key, required this.prayerTimes});

  @override
  Widget build(BuildContext context) {
    final prayers = [
      PrayerTimeItem(prayerName: 'Fajr', prayerTime: prayerTimes.fajr),
      PrayerTimeItem(prayerName: 'Dhuhr', prayerTime: prayerTimes.dhuhr),
      PrayerTimeItem(prayerName: 'Asr', prayerTime: prayerTimes.asr),
      PrayerTimeItem(prayerName: 'Maghrib', prayerTime: prayerTimes.maghrib),
      PrayerTimeItem(prayerName: 'Isha', prayerTime: prayerTimes.isha),
    ];

    return Column(children: prayers);
  }
}

class PrayerTimeItem extends StatelessWidget {
  final String prayerName;
  final String prayerTime;

  const PrayerTimeItem({
    super.key,
    required this.prayerName,
    required this.prayerTime,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement logic to determine if this is the current prayer
    final bool isCurrent = true;

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
            prayerName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
            ),
          ),
          Row(
            children: [
              Text(
                prayerTime,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              if (isCurrent) ...[
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
