// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LocationState)
const locationStateProvider = LocationStateProvider._();

final class LocationStateProvider
    extends $AsyncNotifierProvider<LocationState, UserLocation?> {
  const LocationStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationStateHash();

  @$internal
  @override
  LocationState create() => LocationState();
}

String _$locationStateHash() => r'71410ddc9e690516a6715e8b067ed9e1e3b84cdd';

abstract class _$LocationState extends $AsyncNotifier<UserLocation?> {
  FutureOr<UserLocation?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<UserLocation?>, UserLocation?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserLocation?>, UserLocation?>,
              AsyncValue<UserLocation?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
