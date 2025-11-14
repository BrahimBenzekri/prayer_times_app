import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../../../../data/models/location_models.dart';
import '../../../providers/city_search_provider.dart';

class CountrySearchField extends ConsumerWidget {
  const CountrySearchField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCountry = ref.watch(selectedCountryProvider);

    return TypeAheadField<Country>(
      suggestionsCallback: (search) async {
        final result = await ref.read(countrySearchProvider(search).future);
        return result;
      },
      builder: (context, controller, focusNode) {
        if (selectedCountry != null &&
            controller.text != selectedCountry.name) {
          controller.text = selectedCountry.name;
        }

        return TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            labelText: 'Select Country',
            hintText: 'Search for a country...',
            prefixIcon: const Icon(Icons.public),
            suffixIcon:
                selectedCountry != null
                    ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        ref.read(selectedCountryProvider.notifier).clear();
                        controller.clear();
                      },
                    )
                    : null,
            border: const OutlineInputBorder(),
          ),
        );
      },
      itemBuilder: (context, country) {
        return ListTile(
          leading: const Icon(Icons.public),
          title: Text(country.name),
          subtitle: Text('${country.cities.length} cities'),
        );
      },
      onSelected: (country) {
        ref.read(selectedCountryProvider.notifier).select(country);
        FocusScope.of(context).unfocus();
      },
      emptyBuilder:
          (context) => const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('No countries found'),
          ),
      loadingBuilder:
          (context) => const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(child: CircularProgressIndicator()),
          ),
    );
  }
}
