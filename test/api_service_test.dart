import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prayer_times_app/services/api_service.dart';

void main() {
  group('API Service Tests', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('should fetch prayer times by coordinates', () async {
      final apiService = container.read(apiServiceProvider);

      final result = await apiService.getPrayerTimesByCoordinates(
        latitude: 51.5074,
        longitude: -0.1278,
      );

      expect(result.code, 200);
      expect(result.status, 'OK');
      expect(result.data.timings.fajr, isNotEmpty);
      expect(result.data.timings.dhuhr, isNotEmpty);
      expect(result.data.timings.asr, isNotEmpty);
      expect(result.data.timings.maghrib, isNotEmpty);
      expect(result.data.timings.isha, isNotEmpty);

      print('✅ Unit Test Passed: Prayer times fetched successfully');
      print('📅 Date: ${result.data.date.readable}');
    });

    test('should fetch prayer times by city', () async {
      final apiService = container.read(apiServiceProvider);

      final result = await apiService.getPrayerTimesByCity(
        city: 'Makkah',
        country: 'Saudi Arabia',
      );

      expect(result.code, 200);
      expect(result.status, 'OK');
      expect(result.data.timings.fajr, isNotEmpty);

      print('✅ Unit Test Passed: City prayer times fetched successfully');
    });

    test('should convert Gregorian to Hijri', () async {
      final apiService = container.read(apiServiceProvider);

      final result = await apiService.gregorianToHijri('20-09-2025');

      expect(result['code'], 200);
      expect(result['status'], 'OK');
      expect(result['data']['hijri']['date'], isNotEmpty);

      print('✅ Unit Test Passed: Hijri conversion working');
    });
  });
}
