// lib/services/location_permission_service.dart
import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geocoding/geocoding.dart';
import 'location_storage_service.dart';

part 'location_permission_service.g.dart';

@riverpod
LocationPermissionService locationPermissionService(Ref ref) {
  return LocationPermissionService(ref.read(locationStorageServiceProvider));
}

class LocationPermissionService {
  final LocationStorageService _storageService;

  LocationPermissionService(this._storageService);

  // Check location permission status
  Future<LocationPermissionStatus> checkPermissionStatus() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return LocationPermissionStatus.serviceDisabled;
    }

    LocationPermission permission = await Geolocator.checkPermission();

    switch (permission) {
      case LocationPermission.denied:
        return LocationPermissionStatus.denied;
      case LocationPermission.deniedForever:
        return LocationPermissionStatus.deniedForever;
      case LocationPermission.whileInUse:
      case LocationPermission.always:
        return LocationPermissionStatus.granted;
      default:
        return LocationPermissionStatus.denied;
    }
  }

  // Request location permission
  Future<LocationPermissionStatus> requestLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, don't continue
      // to access the position and request users of the
      // App to enable the location services.
      return LocationPermissionStatus.serviceDisabled;
    }
    LocationPermission permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied) {
      return LocationPermissionStatus.denied;
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return LocationPermissionStatus.deniedForever;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return LocationPermissionStatus.granted;
  }

  // Get current location and save it
  Future<UserLocation?> getCurrentLocationAndSave() async {
    try {
      // Get current position
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: AndroidSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 30),
        ),
      );

      // Get city name from coordinates (reverse geocoding)
      String city = 'Unknown';
      String country = 'Unknown';

      try {
        List<Placemark> placemarks = await placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );
        if (placemarks.isNotEmpty) {
          Placemark place = placemarks[0];
          city = place.locality ?? place.administrativeArea ?? 'Unknown';
          country = place.country ?? 'Unknown';
        }
      } catch (e) {
        log('Reverse geocoding failed: $e');
      }

      // Create user location object
      final userLocation = UserLocation(
        latitude: position.latitude,
        longitude: position.longitude,
        city: city,
        country: country,
        lastUpdated: DateTime.now(),
      );

      // Save location
      await _storageService.saveUserLocation(userLocation);

      return userLocation;
    } catch (e) {
      log('Failed to get location: $e');
      return null;
    }
  }

  // Open app settings for location
  Future<void> openLocationSettings() async {
    await openAppSettings();
  }
}

enum LocationPermissionStatus {
  granted,
  denied,
  deniedForever,
  serviceDisabled,
}
