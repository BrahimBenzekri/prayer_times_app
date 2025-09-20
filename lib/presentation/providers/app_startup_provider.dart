import 'package:flutter/material.dart';
import 'package:prayer_times_app/presentation/providers/theme_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/services.dart';

part 'app_startup_provider.g.dart';

@riverpod
Future<void> appStartup(ref) async {
  // Initialize all critical dependencies here

  // 1. Initialize SharedPreferences
  await ref.read(sharedPreferencesProvider.future);

  // 2. Set system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  // 3. Pre-warm theme provider
  await ref.read(themeNotifierProvider.future);

  // Add any other initialization here (notifications, etc.)
  // Keep this fast - only critical startup dependencies
}
