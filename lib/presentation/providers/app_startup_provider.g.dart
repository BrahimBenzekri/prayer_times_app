// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_startup_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appStartup)
const appStartupProvider = AppStartupProvider._();

final class AppStartupProvider
    extends
        $FunctionalProvider<
          AsyncValue<AppStartupState>,
          AppStartupState,
          FutureOr<AppStartupState>
        >
    with $FutureModifier<AppStartupState>, $FutureProvider<AppStartupState> {
  const AppStartupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appStartupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appStartupHash();

  @$internal
  @override
  $FutureProviderElement<AppStartupState> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AppStartupState> create(Ref ref) {
    return appStartup(ref);
  }
}

String _$appStartupHash() => r'33ab5387b23ec5682949e63d6c798dd5f4d3b658';
