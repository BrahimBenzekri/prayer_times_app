import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prayer_times_app/presentation/pages/city_search/widgets/city_search_field.dart';
import 'package:prayer_times_app/presentation/pages/city_search/widgets/country_search_field.dart';
import 'package:prayer_times_app/presentation/pages/home/home_page.dart';
import 'package:prayer_times_app/presentation/providers/city_search_provider.dart';
import 'package:prayer_times_app/presentation/providers/location_provider.dart';
import 'package:prayer_times_app/presentation/providers/prayer_times_provider.dart';

import 'package:prayer_times_app/services/location_service.dart';

class CitySearchPage extends ConsumerStatefulWidget {
  const CitySearchPage({super.key});

  @override
  ConsumerState<CitySearchPage> createState() => _CitySearchPageState();
}

class _CitySearchPageState extends ConsumerState<CitySearchPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isSaving = false;

  Future<void> _saveLocation() async {
    log('[CitySearchPage] _saveLocation started.');
    setState(() {
      _isSaving = true;
    });

    final country = ref.read(selectedCountryProvider);
    final city = ref.read(selectedCityProvider);

    if (country != null && city != null) {
      final userLocation = await ref
          .read(locationServiceProvider)
          .saveLocationByCity(city.name, country.name);

      log('[CitySearchPage] saveLocationByCity completed.');

      if (!mounted) {
        log(
          '[CitySearchPage] Widget is no longer mounted. Aborting UI updates.',
        );
        return;
      }

      if (userLocation != null) {
        ref.read(locationStateProvider.notifier).updateLocation(userLocation);
        log('[CitySearchPage] locationStateProvider updated.');
      }

      log('[CitySearchPage] Invalidating prayerTimesProvider.');
      ref.invalidate(prayerTimesProvider);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Location saved: ${city.name}, ${country.name}'),
        ),
      );
      log('[CitySearchPage] Navigating to home page.');
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomePage()),
        (Route<dynamic> route) => false,
      );
    } else {
      log('[CitySearchPage] Country or City is null. Aborting save.');
      setState(() {
        _isSaving = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedCountry = ref.watch(selectedCountryProvider);
    final selectedCity = ref.watch(selectedCityProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Search by City'), centerTitle: true),
      body: Form(
        key: _formKey,
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
                    selectedCountry != null &&
                            selectedCity != null &&
                            !_isSaving
                        ? _saveLocation
                        : null,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                child:
                    _isSaving
                        ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                        : const Text('Save Location'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
