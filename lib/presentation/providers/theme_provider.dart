import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_provider.g.dart';

enum ThemeOption {
  light,
  dark,
  system;

  String get displayName {
    switch (this) {
      case ThemeOption.light:
        return 'Light';
      case ThemeOption.dark:
        return 'Dark';
      case ThemeOption.system:
        return 'System';
    }
  }

  IconData get icon {
    switch (this) {
      case ThemeOption.light:
        return Icons.light_mode;
      case ThemeOption.dark:
        return Icons.dark_mode;
      case ThemeOption.system:
        return Icons.brightness_auto;
    }
  }
}

// SharedPreferences provider for dependency injection
@riverpod
Future<SharedPreferences> sharedPreferences(ref) async {
  return await SharedPreferences.getInstance();
}

// Theme Notifier with code generation
@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  static const String _themeKey = 'theme_mode';

  @override
  FutureOr<ThemeOption> build() async {
    // Load saved theme on initialization
    return await _loadTheme();
  }

  Future<ThemeOption> _loadTheme() async {
    try {
      final prefs = await ref.read(sharedPreferencesProvider.future);
      final themeIndex = prefs.getInt(_themeKey);

      if (themeIndex != null && themeIndex < ThemeOption.values.length) {
        return ThemeOption.values[themeIndex];
      }
    } catch (e) {
      // If loading fails, return system default
      debugPrint('Failed to load theme preference: $e');
    }

    return ThemeOption.system; // Default fallback
  }

  Future<void> setTheme(ThemeOption option) async {
    // Optimistic update
    state = AsyncValue.data(option);

    try {
      final prefs = await ref.read(sharedPreferencesProvider.future);
      await prefs.setInt(_themeKey, option.index);
    } catch (e) {
      // Revert on error
      state = AsyncValue.error(e, StackTrace.current);
      debugPrint('Failed to save theme preference: $e');
    }
  }

  void toggleTheme() {
    state.whenData((currentTheme) {
      final nextTheme = switch (currentTheme) {
        ThemeOption.light => ThemeOption.dark,
        ThemeOption.dark => ThemeOption.system,
        ThemeOption.system => ThemeOption.light,
      };
      setTheme(nextTheme);
    });
  }
}

// Convert ThemeOption to Flutter's ThemeMode
@riverpod
ThemeMode themeMode(ref) {
  final themeAsync = ref.watch(themeNotifierProvider);

  if (themeAsync.hasValue) {
    final ThemeOption themeOption = themeAsync.value!;
    return switch (themeOption) {
      ThemeOption.light => ThemeMode.light,
      ThemeOption.dark => ThemeMode.dark,
      ThemeOption.system => ThemeMode.system,
    };
  }

  return ThemeMode.system;
}

// Helper provider to check if current theme is dark
@riverpod
bool isDarkMode(ref, BuildContext context) {
  final ThemeMode themeMode = ref.watch(themeModeProvider);

  return switch (themeMode) {
    ThemeMode.light => false,
    ThemeMode.dark => true,
    ThemeMode.system =>
      MediaQuery.platformBrightnessOf(context) == Brightness.dark,
  };
}

// Provider for getting current theme option safely
@riverpod
ThemeOption currentThemeOption(ref) {
  final themeAsync = ref.watch(themeNotifierProvider);
  return themeAsync.maybeWhen(
    data: (theme) => theme,
    orElse: () => ThemeOption.system,
  );
}
