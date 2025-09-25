// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sharedPreferences)
const sharedPreferencesProvider = SharedPreferencesProvider._();

final class SharedPreferencesProvider
    extends
        $FunctionalProvider<
          AsyncValue<SharedPreferences>,
          SharedPreferences,
          FutureOr<SharedPreferences>
        >
    with
        $FutureModifier<SharedPreferences>,
        $FutureProvider<SharedPreferences> {
  const SharedPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  @$internal
  @override
  $FutureProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SharedPreferences> create(Ref ref) {
    return sharedPreferences(ref);
  }
}

String _$sharedPreferencesHash() => r'dc403fbb1d968c7d5ab4ae1721a29ffe173701c7';

@ProviderFor(ThemeNotifier)
const themeProvider = ThemeNotifierProvider._();

final class ThemeNotifierProvider
    extends $AsyncNotifierProvider<ThemeNotifier, ThemeOption> {
  const ThemeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeNotifierHash();

  @$internal
  @override
  ThemeNotifier create() => ThemeNotifier();
}

String _$themeNotifierHash() => r'2c78ba9e8cfb661a8eec4a18f16579768732da4a';

abstract class _$ThemeNotifier extends $AsyncNotifier<ThemeOption> {
  FutureOr<ThemeOption> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ThemeOption>, ThemeOption>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ThemeOption>, ThemeOption>,
              AsyncValue<ThemeOption>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(themeMode)
const themeModeProvider = ThemeModeProvider._();

final class ThemeModeProvider
    extends $FunctionalProvider<ThemeMode, ThemeMode, ThemeMode>
    with $Provider<ThemeMode> {
  const ThemeModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeModeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeModeHash();

  @$internal
  @override
  $ProviderElement<ThemeMode> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeMode create(Ref ref) {
    return themeMode(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$themeModeHash() => r'fce81769341c34bf7387508fc76f1543e7e8f653';

@ProviderFor(isDarkMode)
const isDarkModeProvider = IsDarkModeFamily._();

final class IsDarkModeProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsDarkModeProvider._({
    required IsDarkModeFamily super.from,
    required BuildContext super.argument,
  }) : super(
         retry: null,
         name: r'isDarkModeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$isDarkModeHash();

  @override
  String toString() {
    return r'isDarkModeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as BuildContext;
    return isDarkMode(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is IsDarkModeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$isDarkModeHash() => r'a2b3b7ee111ed0189aa707a594aa67dc641db2b4';

final class IsDarkModeFamily extends $Family
    with $FunctionalFamilyOverride<bool, BuildContext> {
  const IsDarkModeFamily._()
    : super(
        retry: null,
        name: r'isDarkModeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IsDarkModeProvider call(BuildContext context) =>
      IsDarkModeProvider._(argument: context, from: this);

  @override
  String toString() => r'isDarkModeProvider';
}

@ProviderFor(currentThemeOption)
const currentThemeOptionProvider = CurrentThemeOptionProvider._();

final class CurrentThemeOptionProvider
    extends $FunctionalProvider<ThemeOption, ThemeOption, ThemeOption>
    with $Provider<ThemeOption> {
  const CurrentThemeOptionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentThemeOptionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentThemeOptionHash();

  @$internal
  @override
  $ProviderElement<ThemeOption> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeOption create(Ref ref) {
    return currentThemeOption(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeOption value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeOption>(value),
    );
  }
}

String _$currentThemeOptionHash() =>
    r'579bbf0899f10a1584dde44625301f5066b9c661';
