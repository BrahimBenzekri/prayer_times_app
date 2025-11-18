import 'package:flutter/material.dart';
import 'package:salati/presentation/providers/theme_provider.dart';
import 'package:salati/services/location_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/services.dart';

part 'app_startup_provider.g.dart';

// A class to hold the result of the startup process
class AppStartupState {
  final bool hasUserLocation;

  AppStartupState({required this.hasUserLocation});
}

@riverpod
Future<AppStartupState> appStartup(Ref ref) async {
  // Initialize all critical dependencies here

  // 1. Initialize SharedPreferences (implicitly initialized by other providers)
  // No need to await here if other providers do it.

  // 2. Set system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  // 3. Pre-warm theme provider
  await ref.read(themeProvider.future);

  // 4. Check for existing user location
  final locationService = ref.read(locationStorageServiceProvider);
  final hasLocation = await locationService.hasUserLocation();

  // Return the final state
  return AppStartupState(hasUserLocation: hasLocation);
}
