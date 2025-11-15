import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:prayer_times_app/services/location_service.dart';
import '../../../core/theme/app_colors.dart';
import '../../providers/prayer_times_provider.dart';
import '../city_search/city_search_page.dart';

class LocationEditPage extends ConsumerStatefulWidget {
  const LocationEditPage({super.key});

  @override
  ConsumerState<LocationEditPage> createState() => _LocationEditPageState();
}

class _LocationEditPageState extends ConsumerState<LocationEditPage> {
  bool _isGettingLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Location'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.location_on, size: 80, color: AppColors.islamicGreen),
            const SizedBox(height: 24),
            const Text(
              'Update Your Location',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryText,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              'Tap the button below to get your current location for accurate prayer times.',
              style: TextStyle(fontSize: 16, color: AppColors.secondaryText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            ElevatedButton.icon(
              onPressed: _isGettingLocation ? null : _getCurrentLocation,
              icon:
                  _isGettingLocation
                      ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      )
                      : const Icon(Icons.my_location),
              label: Text(
                _isGettingLocation
                    ? 'Getting Location...'
                    : 'Use Current Location',
                style: const TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.islamicGreen,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CitySearchPage(),
                  ),
                );
              },
              icon: const Icon(Icons.location_city),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.islamicGreen,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              label: const Text(
                'Search by City',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _getCurrentLocation() async {
    setState(() {
      _isGettingLocation = true;
    });

    try {
      final locationService = ref.read(locationServiceProvider);
      final status = await locationService.requestLocation();

      switch (status) {
        case LocationPermissionStatus.granted:
          final location = await locationService.getCurrentLocationAndSave();
          if (location != null && mounted) {
            ref.invalidate(prayerTimesProvider);
            Navigator.of(context).pop();
          }
          break;
        case LocationPermissionStatus.denied:
          if (mounted) {
            _showPermissionDeniedDialog();
          }
          break;
        case LocationPermissionStatus.deniedForever:
          if (mounted) {
            _showPermissionDeniedForeverDialog();
          }
          break;
        case LocationPermissionStatus.serviceDisabled:
          if (mounted) {
            _showServiceDisabledDialog();
          }
          break;
      }
    } finally {
      if (mounted) {
        setState(() {
          _isGettingLocation = false;
        });
      }
    }
  }

  void _showPermissionDeniedDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Location Permission Denied'),
            content: const Text(
              'To automatically get your prayer times, please allow this app to access your location.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _getCurrentLocation();
                },
                child: const Text('Retry'),
              ),
            ],
          ),
    );
  }

  void _showPermissionDeniedForeverDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Location Permission Permanently Denied'),
            content: const Text(
              'You have permanently denied location permissions. To enable it, please go to your app settings.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  await ref
                      .read(locationServiceProvider)
                      .openLocationSettings();
                },
                child: const Text('Open Settings'),
              ),
            ],
          ),
    );
  }

  void _showServiceDisabledDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Location Services Disabled'),
            content: const Text(
              'Please enable location services (GPS) on your device to continue.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () async {
                  await Geolocator.openLocationSettings();
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
                child: const Text('Open Settings'),
              ),
            ],
          ),
    );
  }
}
