import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/location_models.dart';

part 'location_repository.g.dart';

@Riverpod(keepAlive: true)
LocationRepository locationRepository(Ref ref) {
  return LocationRepository();
}

class LocationRepository {
  List<Country>? _countries;

  Future<List<Country>> loadCountries() async {
    if (_countries != null) {
      return _countries!;
    }

    try {
      final String jsonString = await rootBundle.loadString(
        'assets/data/countries_and_cities.json',
      );
      final List<dynamic> jsonList = json.decode(jsonString);

      _countries =
          jsonList
              .map((json) => Country.fromJson(json as Map<String, dynamic>))
              .toList()
            ..sort((a, b) => a.name.compareTo(b.name));

      return _countries!;
    } catch (e) {
      throw Exception('Error loading countries: $e');
    }
  }

  Future<List<Country>> searchCountries(String query) async {
    final countries = await loadCountries();

    if (query.isEmpty) {
      return countries.take(7).toList();
    }

    return countries
        .where(
          (country) => country.name.toLowerCase().contains(query.toLowerCase()),
        )
        .take(20)
        .toList();
  }

  Future<List<City>> searchCities(String countryName, String query) async {
    final countries = await loadCountries();

    final country = countries.firstWhere(
      (c) => c.name == countryName,
      orElse: () => const Country(name: '', cities: []),
    );

    if (country.cities.isEmpty) {
      return [];
    }

    List<String> filteredCities;
    if (query.isEmpty) {
      filteredCities = country.cities.take(7).toList();
    } else {
      filteredCities =
          country.cities
              .where((city) => city.toLowerCase().contains(query.toLowerCase()))
              .take(7)
              .toList();
    }

    return filteredCities
        .map((cityName) => City(name: cityName, country: countryName))
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));
  }
}
