// lib/services/location_storage_service.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'location_storage_service.g.dart';

@riverpod
LocationStorageService locationStorageService(Ref ref) {
  return LocationStorageService();
}

class LocationStorageService {
  static const String _latKey = 'user_latitude';
  static const String _lngKey = 'user_longitude';
  static const String _cityKey = 'user_city';
  static const String _countryKey = 'user_country';
  static const String _hasLocationKey = 'has_user_location';
  static const String _lastUpdateKey = 'location_last_update';

  // Check if user has provided location before
  Future<bool> hasUserLocation() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_hasLocationKey) ?? false;
  }

  // Save user location
  Future<void> saveUserLocation(UserLocation location) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_latKey, location.latitude);
    await prefs.setDouble(_lngKey, location.longitude);
    await prefs.setString(_cityKey, location.city);
    await prefs.setString(_countryKey, location.country);
    await prefs.setBool(_hasLocationKey, true);
    await prefs.setInt(_lastUpdateKey, DateTime.now().millisecondsSinceEpoch);
  }

  // Get stored user location
  Future<UserLocation?> getUserLocation() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey(_latKey) || !prefs.containsKey(_lngKey)) {
      return null;
    }

    return UserLocation(
      latitude: prefs.getDouble(_latKey)!,
      longitude: prefs.getDouble(_lngKey)!,
      city: prefs.getString(_cityKey) ?? 'Unknown',
      country: prefs.getString(_countryKey) ?? 'Unknown',
      lastUpdated: DateTime.fromMillisecondsSinceEpoch(
        prefs.getInt(_lastUpdateKey) ?? DateTime.now().millisecondsSinceEpoch,
      ),
    );
  }

  // Clear stored location (for testing or user logout)
  Future<void> clearUserLocation() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_latKey);
    await prefs.remove(_lngKey);
    await prefs.remove(_cityKey);
    await prefs.remove(_countryKey);
    await prefs.setBool(_hasLocationKey, false);
    await prefs.remove(_lastUpdateKey);
  }

  // Check if location is stale (older than 24 hours)
  Future<bool> isLocationStale() async {
    final location = await getUserLocation();
    if (location == null) return true;

    final hoursSinceUpdate =
        DateTime.now().difference(location.lastUpdated).inHours;
    return hoursSinceUpdate > 24; // Consider stale after 24 hours
  }
}

class UserLocation {
  final double latitude;
  final double longitude;
  final String city;
  final String country;
  final DateTime lastUpdated;

  UserLocation({
    required this.latitude,
    required this.longitude,
    required this.city,
    required this.country,
    required this.lastUpdated,
  });

  @override
  String toString() => '$city, $country';
}
