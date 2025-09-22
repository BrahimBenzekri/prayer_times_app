// lib/services/location_permission_service.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geocoding/geocoding.dart';
import 'location_storage_service.dart';

part 'location_permission_service.g.dart';

@riverpod
LocationPermissionService locationPermissionService(ref) {
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
  Future<LocationPermissionStatus> requestPermission() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return LocationPermissionStatus.serviceDisabled;
    }

    LocationPermission permission = await Geolocator.requestPermission();

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

  // Get current location and save it
  Future<UserLocation?> getCurrentLocationAndSave() async {
    try {
      final permissionStatus = await checkPermissionStatus();
      if (permissionStatus != LocationPermissionStatus.granted) {
        final requested = await requestPermission();
        if (requested != LocationPermissionStatus.granted) {
          return null;
        }
      }

      // Get current position
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 15),
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
        print('Reverse geocoding failed: $e');
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
      print('Failed to get location: $e');
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
