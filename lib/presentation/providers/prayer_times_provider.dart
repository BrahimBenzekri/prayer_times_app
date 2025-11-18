import 'dart:developer';

import 'package:salati/presentation/providers/location_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../services/api_service.dart';
import '../../../data/models/prayer_times_model.dart';

part 'prayer_times_provider.g.dart';

@riverpod
Future<PrayerTimesResponse> prayerTimes(Ref ref) async {
  final userLocation = await ref.watch(locationStateProvider.future);
  final apiService = ref.watch(apiServiceProvider);

  if (userLocation != null) {
    log(
      '--- Fetching prayer times for lat: ${userLocation.latitude}, lon: ${userLocation.longitude} ---',
    );
    final response = await apiService.getPrayerTimesByCoordinates(
      latitude: userLocation.latitude,
      longitude: userLocation.longitude,
    );
    log('--- API Response Received, PRE-PARSING ---');
    log(response.toString()); // This will print the raw map

    final prayerTimesResponse = response;
    log('--- API Response Parsed SUCCESSFULLY ---');
    log(prayerTimesResponse.toString());

    return prayerTimesResponse;
  } else {
    log('--- No user location found, throwing error ---');
    throw Exception('No location data found');
  }
}
