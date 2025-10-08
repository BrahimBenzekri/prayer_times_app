import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/models/location_models.dart';
import '../../../data/repositories/location_repository.dart';

part 'city_search_provider.g.dart';

// State providers for selected location
@riverpod
class SelectedCountry extends _$SelectedCountry {
  @override
  Country? build() => null;

  void select(Country country) {
    state = country;
    // Clear city when country changes
    ref.read(selectedCityProvider.notifier).clear();
  }

  void clear() => state = null;
}

@riverpod
class SelectedCity extends _$SelectedCity {
  @override
  City? build() => null;

  void select(City city) => state = city;
  void clear() => state = null;
}

// Search providers
@riverpod
Future<List<Country>> countrySearch(Ref ref, String query) async {
  final repository = ref.watch(locationRepositoryProvider);
  return repository.searchCountries(query);
}

@riverpod
Future<List<City>> citySearch(Ref ref, String query) async {
  final selectedCountry = ref.watch(selectedCountryProvider);

  if (selectedCountry == null) {
    return [];
  }

  final repository = ref.watch(locationRepositoryProvider);
  return repository.searchCities(selectedCountry.name, query);
}
