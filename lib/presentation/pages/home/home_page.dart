import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salati/presentation/providers/location_provider.dart';
import '../../providers/prayer_times_provider.dart';
import '../../providers/theme_provider.dart';
import 'widgets/location_header.dart';
import 'widgets/date_display.dart';
import 'widgets/prayer_times_list.dart';
import 'widgets/next_prayer_banner.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prayerTimesData = ref.watch(prayerTimesProvider);
    final userLocationData = ref.watch(locationStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.mosque, size: 20),
            const SizedBox(width: 8),
            const Text('Prayer Times'),
          ],
        ),
        actions: [
          Consumer(
            builder: (context, ref, child) {
              final themeOption = ref.watch(currentThemeOptionProvider);
              return IconButton(
                icon: Icon(themeOption.icon),
                onPressed: () {
                  ref.read(themeProvider.notifier).toggleTheme();
                },
                tooltip: 'Toggle Theme (${themeOption.displayName})',
              );
            },
          ),
        ],
        centerTitle: true,
      ),
      body: userLocationData.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error:
            (error, stackTrace) => Center(
              child: Text('Error: $error, stacktrace ${stackTrace.toString()}'),
            ),
        data: (location) {
          if (location == null) {
            return Center(
              child: Text('Please select a location to see prayer times.'),
            );
          }
          return prayerTimesData.when(
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text('Error: $error')),
            data: (prayerTimes) {
              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LocationHeader(
                            city: location.city,
                            country: location.country,
                          ),
                          SizedBox(height: 16),
                          DateDisplay(
                            gregorianDate: prayerTimes.data.date.readable,
                            hijriDate: prayerTimes.data.date.hijri.date,
                          ),
                          SizedBox(height: 24),
                          PrayerTimesList(
                            prayerTimes: prayerTimes.data.timings,
                          ),
                        ],
                      ),
                    ),
                  ),
                  NextPrayerBanner(timings: prayerTimes.data.timings),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
