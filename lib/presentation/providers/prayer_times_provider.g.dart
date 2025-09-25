// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_times_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(prayerTimes)
const prayerTimesProvider = PrayerTimesProvider._();

final class PrayerTimesProvider
    extends
        $FunctionalProvider<
          AsyncValue<PrayerTimesResponse>,
          PrayerTimesResponse,
          FutureOr<PrayerTimesResponse>
        >
    with
        $FutureModifier<PrayerTimesResponse>,
        $FutureProvider<PrayerTimesResponse> {
  const PrayerTimesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'prayerTimesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$prayerTimesHash();

  @$internal
  @override
  $FutureProviderElement<PrayerTimesResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PrayerTimesResponse> create(Ref ref) {
    return prayerTimes(ref);
  }
}

String _$prayerTimesHash() => r'ae093f32556455527562952f53f6d090b5c64a6b';

@ProviderFor(userLocation)
const userLocationProvider = UserLocationProvider._();

final class UserLocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserLocation?>,
          UserLocation?,
          FutureOr<UserLocation?>
        >
    with $FutureModifier<UserLocation?>, $FutureProvider<UserLocation?> {
  const UserLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userLocationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userLocationHash();

  @$internal
  @override
  $FutureProviderElement<UserLocation?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserLocation?> create(Ref ref) {
    return userLocation(ref);
  }
}

String _$userLocationHash() => r'b84c0cc745dc3adb8c24c792235d1ffa02f5bfa0';
