// lib/presentation/pages/location_onboarding/location_onboarding_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../../services/location_permission_service.dart';
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
    return Scaffold(
      backgroundColor: AppColors.lightGray,
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
                  color: AppColors.islamicGreen,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.mosque, size: 80, color: Colors.white),
              ),

              const SizedBox(height: 32),

              // Title
              const Text(
                'Welcome to Prayer Times',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryText,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              // Subtitle
              Text(
                'To show you accurate prayer times, we need to know your location',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.secondaryText,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              // Location Icon with explanation
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryText.withOpacity(0.1),
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
                      color: AppColors.islamicGreen,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Your location helps us provide:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryText,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _buildFeatureItem('🕌', 'Accurate prayer times'),
                    _buildFeatureItem('🧭', 'Correct Qibla direction'),
                    _buildFeatureItem('📅', 'Local Islamic calendar'),
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
                    backgroundColor: AppColors.islamicGreen,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child:
                      _isGettingLocation
                          ? const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Getting your location...',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )
                          : const Text(
                            'Allow Location Access',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                ),
              ),

              const SizedBox(height: 12),

              // Skip for now button
              TextButton(
                onPressed: _isGettingLocation ? null : _skipForNow,
                child: Text(
                  'Skip for now (search by city)',
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 14,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // Privacy note
              Text(
                'Your location is only stored on your device and never shared.',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.mutedText,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String emoji, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(fontSize: 14, color: AppColors.secondaryText),
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
      final locationService = ref.read(locationPermissionServiceProvider);
      final location = await locationService.getCurrentLocationAndSave();

      if (location != null) {
        // Success! Navigate to home page
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
      } else {
        // Handle permission denied or other errors
        if (mounted) {
          _showLocationError();
        }
      }
    } catch (e) {
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
                      .read(locationPermissionServiceProvider)
                      .openLocationSettings();
                },
                child: const Text('Open Settings'),
              ),
            ],
          ),
    );
  }

  void _skipForNow() {
    // Navigate to home page without location
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}
