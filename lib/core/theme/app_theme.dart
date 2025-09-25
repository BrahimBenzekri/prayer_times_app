import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      // Color Scheme
      colorScheme: const ColorScheme.light(
        primary: AppColors.islamicGreen,
        onPrimary: AppColors.pureWhite,
        secondary: AppColors.islamicGold,
        onSecondary: AppColors.primaryText,
        surface: AppColors.lightGray,
        onSurface: AppColors.primaryText,
        error: AppColors.error,
        onError: AppColors.pureWhite,
      ),

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.islamicGreen,
        foregroundColor: AppColors.pureWhite,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.pureWhite,
        ),
      ),

      // Card Theme
      cardTheme: CardThemeData(
        color: AppColors.pureWhite,
        elevation: 2,
        shadowColor: AppColors.primaryText.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.islamicGreen,
          foregroundColor: AppColors.pureWhite,
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),

      // Text Theme
      textTheme: const TextTheme(
        displayLarge: AppTextStyles.displayLarge,
        displayMedium: AppTextStyles.displayMedium,
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.bodyMedium,
      ),

      // Icon Theme
      iconTheme: const IconThemeData(color: AppColors.secondaryText, size: 24),

      // Scaffold Theme
      scaffoldBackgroundColor: AppColors.lightGray,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // Color Scheme
      colorScheme: const ColorScheme.dark(
        primary: AppColors.lightIslamicGreen,
        onPrimary: AppColors.charcoal,
        secondary: AppColors.lightGold,
        onSecondary: AppColors.charcoal,
        surface: AppColors.charcoal,
        onSurface: AppColors.lightText,
        error: AppColors.error,
        onError: AppColors.pureWhite,
      ),

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.charcoal,
        foregroundColor: AppColors.lightText,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.lightText,
        ),
      ),

      // Card Theme
      cardTheme: CardThemeData(
        color: const Color(0xFF2A2A2A),
        elevation: 4,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightIslamicGreen,
          foregroundColor: AppColors.charcoal,
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),

      // Text Theme
      textTheme: TextTheme(
        displayLarge: AppTextStyles.displayLarge.copyWith(
          color: AppColors.lightText,
        ),
        displayMedium: AppTextStyles.displayMedium.copyWith(
          color: AppColors.lightText,
        ),
        headlineLarge: AppTextStyles.headlineLarge.copyWith(
          color: AppColors.lightText,
        ),
        headlineMedium: AppTextStyles.headlineMedium.copyWith(
          color: AppColors.lightText,
        ),
        bodyLarge: AppTextStyles.bodyLarge.copyWith(color: AppColors.lightText),
        bodyMedium: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.mutedText,
        ),
      ),

      // Icon Theme
      iconTheme: const IconThemeData(color: AppColors.mutedText, size: 24),

      // Scaffold Theme
      scaffoldBackgroundColor: AppColors.charcoal,
    );
  }
}
