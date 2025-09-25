// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_storage_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(locationStorageService)
const locationStorageServiceProvider = LocationStorageServiceProvider._();

final class LocationStorageServiceProvider
    extends
        $FunctionalProvider<
          LocationStorageService,
          LocationStorageService,
          LocationStorageService
        >
    with $Provider<LocationStorageService> {
  const LocationStorageServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationStorageServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationStorageServiceHash();

  @$internal
  @override
  $ProviderElement<LocationStorageService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocationStorageService create(Ref ref) {
    return locationStorageService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationStorageService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationStorageService>(value),
    );
  }
}

String _$locationStorageServiceHash() =>
    r'ac7f2eda2157562d4d7513d6f3b4861d3d6d7f30';
