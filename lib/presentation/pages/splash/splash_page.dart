import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../providers/app_startup_provider.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);

    return Scaffold(
      backgroundColor: AppColors.islamicGreen,
      body: appStartupState.when(
        data: (state) {
          // Navigate based on whether user has location
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (state.hasUserLocation) {
              // User has location, go to home page
              context.go('/home');
            } else {
              // First time user, show location onboarding
              context.go('/onboarding');
            }
          });
          return const _SplashContent();
        },
        loading: () => const _SplashContent(),
        error: (error, stackTrace) => _ErrorContent(
          error: error.toString(),
          onRetry: () => ref.invalidate(appStartupProvider),
        ),
      ),
    );
  }
}

// Keep existing _SplashContent and _ErrorContent widgets...

class _SplashContent extends StatelessWidget {
  const _SplashContent();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // App Icon/Logo
          Icon(Icons.mosque, size: 80, color: AppColors.pureWhite),
          SizedBox(height: 24),

          // App Name
          Text(
            'Prayer Times',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.pureWhite,
            ),
          ),
          SizedBox(height: 8),

          // Subtitle
          Text(
            'Stay connected with your prayers',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.pureWhite,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 48),

          // Loading indicator
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.islamicGold),
          ),
        ],
      ),
    );
  }
}

class _ErrorContent extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;

  const _ErrorContent({required this.error, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: AppColors.pureWhite,
            ),
            const SizedBox(height: 24),
            const Text(
              'Failed to initialize app',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.pureWhite,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              error,
              style: const TextStyle(color: AppColors.pureWhite),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.islamicGold,
                foregroundColor: AppColors.primaryText,
              ),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
