import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../../../../data/models/location_models.dart';
import '../../../providers/city_search_provider.dart';

class CitySearchField extends ConsumerWidget {
  const CitySearchField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCountry = ref.watch(selectedCountryProvider);
    final selectedCity = ref.watch(selectedCityProvider);

    if (selectedCountry == null) {
      return TextField(
        enabled: false,
        decoration: InputDecoration(
          labelText: 'Select City',
          hintText: 'Please select a country first',
          prefixIcon: const Icon(Icons.location_city),
          border: const OutlineInputBorder(),
          fillColor: Theme.of(context).canvasColor,
          filled: true,
        ),
      );
    }

    return TypeAheadField<City>(
      suggestionsCallback: (search) async {
        final result = await ref.read(citySearchProvider(search).future);
        return result;
      },
      builder: (context, controller, focusNode) {
        if (selectedCity != null && controller.text != selectedCity.name) {
          controller.text = selectedCity.name;
        }

        return TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            labelText: 'Select City',
            hintText: 'Search for a city in ${selectedCountry.name}...',
            prefixIcon: const Icon(Icons.location_city),
            suffixIcon:
                selectedCity != null
                    ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        ref.read(selectedCityProvider.notifier).clear();
                        controller.clear();
                      },
                    )
                    : null,
            border: const OutlineInputBorder(),
          ),
        );
      },
      itemBuilder: (context, city) {
        return ListTile(
          leading: const Icon(Icons.location_city),
          title: Text(city.name),
          subtitle: Text(city.country),
        );
      },
      onSelected: (city) {
        ref.read(selectedCityProvider.notifier).select(city);
        FocusScope.of(context).unfocus();
      },
      emptyBuilder:
          (context) => const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('No cities found'),
          ),
      loadingBuilder:
          (context) => const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(child: CircularProgressIndicator()),
          ),
    );
  }
}
