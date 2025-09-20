// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPreferencesHash() => r'a2e33dc9fa8ab78049dab3549e2dfb444921fc4c';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider =
    AutoDisposeFutureProvider<SharedPreferences>.internal(
      sharedPreferences,
      name: r'sharedPreferencesProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$sharedPreferencesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SharedPreferencesRef = AutoDisposeFutureProviderRef<SharedPreferences>;
String _$themeModeHash() => r'4e98a096e217b041bddeb8fe9e6174521b095b4c';

/// See also [themeMode].
@ProviderFor(themeMode)
final themeModeProvider = AutoDisposeProvider<ThemeMode>.internal(
  themeMode,
  name: r'themeModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ThemeModeRef = AutoDisposeProviderRef<ThemeMode>;
String _$isDarkModeHash() => r'f9dc13ad0cfcc3cafe9ebafdd63e2e471e2b4c84';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [isDarkMode].
@ProviderFor(isDarkMode)
const isDarkModeProvider = IsDarkModeFamily();

/// See also [isDarkMode].
class IsDarkModeFamily extends Family<bool> {
  /// See also [isDarkMode].
  const IsDarkModeFamily();

  /// See also [isDarkMode].
  IsDarkModeProvider call(BuildContext context) {
    return IsDarkModeProvider(context);
  }

  @override
  IsDarkModeProvider getProviderOverride(
    covariant IsDarkModeProvider provider,
  ) {
    return call(provider.context);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'isDarkModeProvider';
}

/// See also [isDarkMode].
class IsDarkModeProvider extends AutoDisposeProvider<bool> {
  /// See also [isDarkMode].
  IsDarkModeProvider(BuildContext context)
    : this._internal(
        (ref) => isDarkMode(ref as IsDarkModeRef, context),
        from: isDarkModeProvider,
        name: r'isDarkModeProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$isDarkModeHash,
        dependencies: IsDarkModeFamily._dependencies,
        allTransitiveDependencies: IsDarkModeFamily._allTransitiveDependencies,
        context: context,
      );

  IsDarkModeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext context;

  @override
  Override overrideWith(bool Function(IsDarkModeRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: IsDarkModeProvider._internal(
        (ref) => create(ref as IsDarkModeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _IsDarkModeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsDarkModeProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IsDarkModeRef on AutoDisposeProviderRef<bool> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _IsDarkModeProviderElement extends AutoDisposeProviderElement<bool>
    with IsDarkModeRef {
  _IsDarkModeProviderElement(super.provider);

  @override
  BuildContext get context => (origin as IsDarkModeProvider).context;
}

String _$currentThemeOptionHash() =>
    r'b1ac001b838385f992c49177a2713afa70c51012';

/// See also [currentThemeOption].
@ProviderFor(currentThemeOption)
final currentThemeOptionProvider = AutoDisposeProvider<ThemeOption>.internal(
  currentThemeOption,
  name: r'currentThemeOptionProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currentThemeOptionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentThemeOptionRef = AutoDisposeProviderRef<ThemeOption>;
String _$themeNotifierHash() => r'2c78ba9e8cfb661a8eec4a18f16579768732da4a';

/// See also [ThemeNotifier].
@ProviderFor(ThemeNotifier)
final themeNotifierProvider =
    AutoDisposeAsyncNotifierProvider<ThemeNotifier, ThemeOption>.internal(
      ThemeNotifier.new,
      name: r'themeNotifierProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$themeNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ThemeNotifier = AutoDisposeAsyncNotifier<ThemeOption>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
