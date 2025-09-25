// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_permission_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(locationPermissionService)
const locationPermissionServiceProvider = LocationPermissionServiceProvider._();

final class LocationPermissionServiceProvider
    extends
        $FunctionalProvider<
          LocationPermissionService,
          LocationPermissionService,
          LocationPermissionService
        >
    with $Provider<LocationPermissionService> {
  const LocationPermissionServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationPermissionServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationPermissionServiceHash();

  @$internal
  @override
  $ProviderElement<LocationPermissionService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocationPermissionService create(Ref ref) {
    return locationPermissionService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationPermissionService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationPermissionService>(value),
    );
  }
}

String _$locationPermissionServiceHash() =>
    r'31f75e63de02981caa2031716c96da1495a93647';
