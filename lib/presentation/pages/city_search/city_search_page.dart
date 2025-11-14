import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prayer_times_app/presentation/pages/city_search/widgets/city_search_field.dart';
import 'package:prayer_times_app/presentation/pages/city_search/widgets/country_search_field.dart';
import 'package:prayer_times_app/presentation/providers/city_search_provider.dart';

class CitySearchPage extends ConsumerWidget {
  const CitySearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    final selectedCountry = ref.watch(selectedCountryProvider);
    final selectedCity = ref.watch(selectedCityProvider);

    void saveLocation() {
      final country = ref.read(selectedCountryProvider);
      final city = ref.read(selectedCityProvider);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Location saved: ${city!.name}, ${country!.name}'),
        ),
      );
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Search by City'), centerTitle: true),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CountrySearchField(),
              const SizedBox(height: 24),
              const CitySearchField(),
              const Spacer(),
              ElevatedButton(
                onPressed:
                    selectedCountry != null && selectedCity != null
                        ? saveLocation
                        : null,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                child: const Text('Save Location'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
