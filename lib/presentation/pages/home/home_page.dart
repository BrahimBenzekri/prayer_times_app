import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prayer Times'),
        actions: const [SizedBox(width: 8)],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mosque, size: 64, color: AppColors.islamicGreen),
            SizedBox(height: 16),
            Text(
              'Prayer Times App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Location & API integration coming next...',
              style: TextStyle(fontSize: 16, color: AppColors.secondaryText),
            ),
          ],
        ),
      ),
    );
  }
}
