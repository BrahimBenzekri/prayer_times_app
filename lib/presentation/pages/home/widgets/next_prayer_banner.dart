import 'package:flutter/material.dart';
import 'dart:async';
import '../../../../core/theme/app_colors.dart';
import '../../../../data/models/prayer_times_model.dart';
import 'package:intl/intl.dart';

class NextPrayerBanner extends StatefulWidget {
  final Timings timings;

  const NextPrayerBanner({super.key, required this.timings});

  @override
  _NextPrayerBannerState createState() => _NextPrayerBannerState();
}

class _NextPrayerBannerState extends State<NextPrayerBanner> {
  late Timer _timer;
  String _nextPrayerName = '';
  String _timeUntilNextPrayer = '';

  @override
  void initState() {
    super.initState();
    _updateNextPrayer();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _updateNextPrayer();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _updateNextPrayer() {
    final now = DateTime.now();
    final prayerTimes = _getPrayerTimesMap();

    String nextPrayer = '';
    DateTime nextPrayerTime = DateTime.now();

    for (var entry in prayerTimes.entries) {
      final prayerTime = _parsePrayerTime(entry.value);
      if (prayerTime.isAfter(now)) {
        nextPrayer = entry.key;
        nextPrayerTime = prayerTime;
        break;
      }
    }

    if (nextPrayer.isEmpty) {
      // If all prayers for today have passed, show Fajr for the next day
      nextPrayer = 'Fajr';
      nextPrayerTime = _parsePrayerTime(widget.timings.fajr).add(Duration(days: 1));
    }

    final duration = nextPrayerTime.difference(now);
    setState(() {
      _nextPrayerName = nextPrayer;
      _timeUntilNextPrayer = _formatDuration(duration);
    });
  }

  Map<String, String> _getPrayerTimesMap() {
    return {
      'Fajr': widget.timings.fajr,
      'Dhuhr': widget.timings.dhuhr,
      'Asr': widget.timings.asr,
      'Maghrib': widget.timings.maghrib,
      'Isha': widget.timings.isha,
    };
  }

  DateTime _parsePrayerTime(String time) {
    final now = DateTime.now();
    final format = DateFormat("HH:mm");
    final dateTime = format.parse(time);
    return DateTime(now.year, now.month, now.day, dateTime.hour, dateTime.minute);
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return 'in $hours hours, $minutes minutes and $seconds seconds';
  }

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
            'Next Prayer: $_nextPrayerName',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryText,
            ),
          ),
          SizedBox(height: 4),
          Text(
            _timeUntilNextPrayer,
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