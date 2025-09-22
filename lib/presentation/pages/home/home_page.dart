import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import 'widgets/location_header.dart';
import 'widgets/date_display.dart';
import 'widgets/prayer_times_list.dart';
import 'widgets/next_prayer_banner.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mosque, color: AppColors.pureWhite, size: 20),
            SizedBox(width: 8),
            Text('Prayer Times'),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocationHeader(),
                  SizedBox(height: 16),
                  DateDisplay(),
                  SizedBox(height: 24),
                  PrayerTimesList(),
                ],
              ),
            ),
          ),
          NextPrayerBanner(),
        ],
      ),
    );
  }
}
