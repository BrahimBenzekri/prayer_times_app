import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:prayer_times_app/presentation/pages/city_search/widgets/city_search_field.dart';
import 'package:prayer_times_app/presentation/pages/city_search/widgets/country_search_field.dart';

class CitySearchPage extends ConsumerStatefulWidget {
  const CitySearchPage({super.key});

  @override
  ConsumerState<CitySearchPage> createState() => _CitySearchPageState();
}

class _CitySearchPageState extends ConsumerState<CitySearchPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  // String? _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search by City'), centerTitle: true),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CountrySearchField(),
              // TypeAheadField<String>(
              //   builder: (context, controller, focusNode) {
              //     return TextFormField(
              //       controller: controller,
              //       focusNode: focusNode,
              //       decoration: const InputDecoration(
              //         labelText: 'Country',
              //         hintText: 'Start typing your country...',
              //         border: OutlineInputBorder(),
              //       ),
              //       validator: (value) {
              //         if (value == null || value.isEmpty) {
              //           return 'Please select a country';
              //         }
              //         return null;
              //       },
              //     );
              //   },
              //   suggestionsCallback: (pattern) async {
              //     // Placeholder for country suggestions API call
              //     if (pattern.isEmpty) {
              //       return [];
              //     }
              //     // In a real app, you'd filter a list of countries
              //     return ['United States', 'United Kingdom', 'Canada']
              //         .where(
              //           (country) => country.toLowerCase().contains(
              //             pattern.toLowerCase(),
              //           ),
              //         )
              //         .toList();
              //   },
              //   itemBuilder: (context, suggestion) {
              //     return ListTile(title: Text(suggestion));
              //   },
              //   onSelected: (suggestion) {
              //     _countryController.text = suggestion;
              //     setState(() {
              //       _selectedCountry = suggestion;
              //     });
              //   },
              // ),
              const SizedBox(height: 24),
              CitySearchField(),

              // TypeAheadField<String>(
              //   builder: (context, controller, focusNode) {
              //     return TextFormField(
              //       controller: controller,
              //       focusNode: focusNode,
              //       decoration: InputDecoration(
              //         labelText: 'City',
              //         hintText:
              //             _selectedCountry == null
              //                 ? 'Please select a country first'
              //                 : 'Start typing your city...',
              //         border: const OutlineInputBorder(),
              //       ),
              //       enabled: _selectedCountry != null,
              //       validator: (value) {
              //         if (value == null || value.isEmpty) {
              //           return 'Please select a city';
              //         }
              //         return null;
              //       },
              //     );
              //   },
              //   suggestionsCallback: (pattern) async {
              //     // Placeholder for city suggestions API call
              //     if (pattern.isEmpty || _selectedCountry == null) {
              //       return [];
              //     }
              //     // In a real app, you'd fetch cities for the selected country
              //     return ['New York', 'Los Angeles', 'Chicago']
              //         .where(
              //           (city) =>
              //               city.toLowerCase().contains(pattern.toLowerCase()),
              //         )
              //         .toList();
              //   },
              //   itemBuilder: (context, suggestion) {
              //     return ListTile(title: Text(suggestion));
              //   },
              //   onSelected: (suggestion) {
              //     _cityController.text = suggestion;
              //   },
              // ),
              const Spacer(),
              ElevatedButton(
                onPressed: _saveLocation,
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

  void _saveLocation() {
    if (_formKey.currentState!.validate()) {
      // Placeholder for saving the location
      final country = _countryController.text;
      final city = _cityController.text;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Location saved: $city, $country')),
      );
      // In a real app, you would get coordinates for the city/country,
      // save them, invalidate the prayer times provider, and pop back.
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    _countryController.dispose();
    _cityController.dispose();
    super.dispose();
  }
}
