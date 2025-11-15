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

String _$prayerTimesHash() => r'504d055803732625be649aa7c4861a92fde3da07';
