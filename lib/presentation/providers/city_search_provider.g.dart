// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedCountry)
const selectedCountryProvider = SelectedCountryProvider._();

final class SelectedCountryProvider
    extends $NotifierProvider<SelectedCountry, Country?> {
  const SelectedCountryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedCountryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedCountryHash();

  @$internal
  @override
  SelectedCountry create() => SelectedCountry();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Country? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Country?>(value),
    );
  }
}

String _$selectedCountryHash() => r'c8396da3914be888582fb0220617fcabbc3f9747';

abstract class _$SelectedCountry extends $Notifier<Country?> {
  Country? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Country?, Country?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Country?, Country?>,
              Country?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(SelectedCity)
const selectedCityProvider = SelectedCityProvider._();

final class SelectedCityProvider
    extends $NotifierProvider<SelectedCity, City?> {
  const SelectedCityProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedCityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedCityHash();

  @$internal
  @override
  SelectedCity create() => SelectedCity();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(City? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<City?>(value),
    );
  }
}

String _$selectedCityHash() => r'ee7b332fbf3834e3e51e4d9e599b59491c1b820a';

abstract class _$SelectedCity extends $Notifier<City?> {
  City? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<City?, City?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<City?, City?>,
              City?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(countrySearch)
const countrySearchProvider = CountrySearchFamily._();

final class CountrySearchProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Country>>,
          List<Country>,
          FutureOr<List<Country>>
        >
    with $FutureModifier<List<Country>>, $FutureProvider<List<Country>> {
  const CountrySearchProvider._({
    required CountrySearchFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'countrySearchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$countrySearchHash();

  @override
  String toString() {
    return r'countrySearchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Country>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Country>> create(Ref ref) {
    final argument = this.argument as String;
    return countrySearch(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CountrySearchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$countrySearchHash() => r'427078597a5ca8cd196b71ab7bf97350a82aa362';

final class CountrySearchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Country>>, String> {
  const CountrySearchFamily._()
    : super(
        retry: null,
        name: r'countrySearchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CountrySearchProvider call(String query) =>
      CountrySearchProvider._(argument: query, from: this);

  @override
  String toString() => r'countrySearchProvider';
}

@ProviderFor(citySearch)
const citySearchProvider = CitySearchFamily._();

final class CitySearchProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<City>>,
          List<City>,
          FutureOr<List<City>>
        >
    with $FutureModifier<List<City>>, $FutureProvider<List<City>> {
  const CitySearchProvider._({
    required CitySearchFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'citySearchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$citySearchHash();

  @override
  String toString() {
    return r'citySearchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<City>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<City>> create(Ref ref) {
    final argument = this.argument as String;
    return citySearch(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CitySearchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$citySearchHash() => r'ce80aae642ab225bde860313aeffe931c1a1da67';

final class CitySearchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<City>>, String> {
  const CitySearchFamily._()
    : super(
        retry: null,
        name: r'citySearchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CitySearchProvider call(String query) =>
      CitySearchProvider._(argument: query, from: this);

  @override
  String toString() => r'citySearchProvider';
}
