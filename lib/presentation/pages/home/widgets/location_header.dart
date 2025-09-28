import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../location_edit/location_edit_page.dart';

class LocationHeader extends StatelessWidget {
  final String city;
  final String country;

  const LocationHeader({super.key, required this.city, required this.country});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const LocationEditPage()),
          );
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
          child: Row(
            children: [
              Icon(Icons.location_on, color: AppColors.islamicGreen, size: 20),
              const SizedBox(width: 8),
              Text(
                '$city, $country',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.secondaryText,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(Icons.edit, color: AppColors.islamicGreen, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
