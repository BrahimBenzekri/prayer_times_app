import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class LocationHeader extends StatelessWidget {
  final String city;
  final String country;

  const LocationHeader({
    super.key,
    required this.city,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: AppColors.islamicGreen,
          size: 20,
        ),
        SizedBox(width: 8),
        Text(
          '$city, $country',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.secondaryText,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}