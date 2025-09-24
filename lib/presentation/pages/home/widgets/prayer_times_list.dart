import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../data/models/prayer_times_model.dart';

class PrayerTimesList extends StatelessWidget {
  final Timings prayerTimes;

  const PrayerTimesList({super.key, required this.prayerTimes});

  Map<String, String> _getPrayerTimesMap() {
    return {
      'Fajr': prayerTimes.fajr,
      'Dhuhr': prayerTimes.dhuhr,
      'Asr': prayerTimes.asr,
      'Maghrib': prayerTimes.maghrib,
      'Isha': prayerTimes.isha,
    };
  }

  DateTime _parsePrayerTime(String time) {
    final now = DateTime.now();
    final format = DateFormat("HH:mm");
    final dateTime = format.parse(time);
    return DateTime(
      now.year,
      now.month,
      now.day,
      dateTime.hour,
      dateTime.minute,
    );
  }

  String _updateCurrentPrayer() {
    final now = DateTime.now();
    final prayerTimes = _getPrayerTimesMap();

    String currentPrayer = '';

    for (var entry in prayerTimes.entries) {
      final prayerTime = _parsePrayerTime(entry.value);
      if (prayerTime.isBefore(now)) {
        currentPrayer = entry.key;
        break;
      }
    }

    if (currentPrayer.isEmpty) {
      currentPrayer = 'Isha';
    }

    return currentPrayer;
  }

  @override
  Widget build(BuildContext context) {
    final currentPrayer = _updateCurrentPrayer();
    final prayers = [
      PrayerTimeItem(
        prayerName: 'Fajr',
        prayerTime: prayerTimes.fajr,
        isCurrent: currentPrayer == 'Fajr',
      ),
      PrayerTimeItem(
        prayerName: 'Dhuhr',
        prayerTime: prayerTimes.dhuhr,
        isCurrent: currentPrayer == 'Dhuhr',
      ),
      PrayerTimeItem(
        prayerName: 'Asr',
        prayerTime: prayerTimes.asr,
        isCurrent: currentPrayer == 'Asr',
      ),
      PrayerTimeItem(
        prayerName: 'Maghrib',
        prayerTime: prayerTimes.maghrib,
        isCurrent: currentPrayer == 'Maghrib',
      ),
      PrayerTimeItem(
        prayerName: 'Isha',
        prayerTime: prayerTimes.isha,
        isCurrent: currentPrayer == 'Isha',
      ),
    ];

    return Column(children: prayers);
  }
}

class PrayerTimeItem extends StatelessWidget {
  final String prayerName;
  final String prayerTime;
  final bool isCurrent;

  const PrayerTimeItem({
    super.key,
    required this.prayerName,
    required this.prayerTime,
    required this.isCurrent,
  });

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
