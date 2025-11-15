// lib/presentation/pages/location_onboarding/location_onboarding_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:prayer_times_app/services/location_service.dart';

import '../city_search/city_search_page.dart';
import '../home/home_page.dart';

class LocationOnboardingPage extends ConsumerStatefulWidget {
  const LocationOnboardingPage({super.key});

  @override
  ConsumerState<LocationOnboardingPage> createState() =>
      _LocationOnboardingPageState();
}

class _LocationOnboardingPageState
    extends ConsumerState<LocationOnboardingPage> {
  bool _isGettingLocation = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Spacer(),

              // App Icon/Logo
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.mosque,
                  size: 80,
                  color: theme.colorScheme.onPrimary,
                ),
              ),

              const SizedBox(height: 32),

              // Title
              Text(
                'Welcome to Prayer Times',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              // Subtitle
              Text(
                'To show you accurate prayer times, we need to know your location',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              // Location Icon with explanation
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: theme.shadowColor.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 48,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Your location helps us provide:',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _buildFeatureItem(theme, '🕌', 'Accurate prayer times'),
                    _buildFeatureItem(theme, '📅', 'Local Islamic calendar'),
                  ],
                ),
              ),

              const Spacer(),

              // Get Location Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isGettingLocation ? null : _getCurrentLocation,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  child:
                      _isGettingLocation
                          ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    theme.colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Text('Getting your location...'),
                            ],
                          )
                          : const Text('Allow Location Access'),
                ),
              ),

              const SizedBox(height: 12),

              // Skip for now button
              TextButton(
                onPressed: _isGettingLocation ? null : _skipForNow,
                child: Text(
                  'Skip for now (search by city)',
                  style: TextStyle(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    fontSize: 14,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // Privacy note
              Text(
                'Your location is only stored on your device and never shared.',
                style: theme.textTheme.bodySmall?.copyWith(
                  fontStyle: FontStyle.italic,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(ThemeData theme, String emoji, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 12),
          Text(
            text,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
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
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
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
    } catch (e) {
      // Handle any other unexpected errors
      if (mounted) {
        _showLocationError();
      }
    } finally {
      if (mounted) {
        setState(() {
          _isGettingLocation = false;
        });
      }
    }
  }

  void _showLocationError() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Location Access Required'),
            content: const Text(
              'We need location access to show accurate prayer times. You can:\n\n'
              '• Allow location access in settings\n'
              '• Search for your city manually',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _skipForNow();
                },
                child: const Text('Search by City'),
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
                  // Geolocator provides a helper to open location settings
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

  void _skipForNow() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const CitySearchPage()),
    );
  }
}
