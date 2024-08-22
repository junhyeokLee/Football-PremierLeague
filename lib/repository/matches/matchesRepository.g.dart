// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matchesRepository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$matchesRepositoryHash() => r'cf46ae061e865a1eebc2e1d8b2be466eda8cc920';

/// See also [matchesRepository].
@ProviderFor(matchesRepository)
final matchesRepositoryProvider =
    AutoDisposeProvider<MatchesRepository>.internal(
  matchesRepository,
  name: r'matchesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$matchesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MatchesRepositoryRef = AutoDisposeProviderRef<MatchesRepository>;
String _$getMatchesHash() => r'ddf98a39d4575e2e501788d7fb512bd12b7e66d7';

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

/// See also [getMatches].
@ProviderFor(getMatches)
const getMatchesProvider = GetMatchesFamily();

/// See also [getMatches].
class GetMatchesFamily extends Family<AsyncValue<MatchesResponse>> {
  /// See also [getMatches].
  const GetMatchesFamily();

  /// See also [getMatches].
  GetMatchesProvider call({
    required String startDate,
    required String endDate,
  }) {
    return GetMatchesProvider(
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  GetMatchesProvider getProviderOverride(
    covariant GetMatchesProvider provider,
  ) {
    return call(
      startDate: provider.startDate,
      endDate: provider.endDate,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMatchesProvider';
}

/// See also [getMatches].
class GetMatchesProvider extends AutoDisposeFutureProvider<MatchesResponse> {
  /// See also [getMatches].
  GetMatchesProvider({
    required String startDate,
    required String endDate,
  }) : this._internal(
          (ref) => getMatches(
            ref as GetMatchesRef,
            startDate: startDate,
            endDate: endDate,
          ),
          from: getMatchesProvider,
          name: r'getMatchesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMatchesHash,
          dependencies: GetMatchesFamily._dependencies,
          allTransitiveDependencies:
              GetMatchesFamily._allTransitiveDependencies,
          startDate: startDate,
          endDate: endDate,
        );

  GetMatchesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.startDate,
    required this.endDate,
  }) : super.internal();

  final String startDate;
  final String endDate;

  @override
  Override overrideWith(
    FutureOr<MatchesResponse> Function(GetMatchesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMatchesProvider._internal(
        (ref) => create(ref as GetMatchesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        startDate: startDate,
        endDate: endDate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MatchesResponse> createElement() {
    return _GetMatchesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMatchesProvider &&
        other.startDate == startDate &&
        other.endDate == endDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);
    hash = _SystemHash.combine(hash, endDate.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetMatchesRef on AutoDisposeFutureProviderRef<MatchesResponse> {
  /// The parameter `startDate` of this provider.
  String get startDate;

  /// The parameter `endDate` of this provider.
  String get endDate;
}

class _GetMatchesProviderElement
    extends AutoDisposeFutureProviderElement<MatchesResponse>
    with GetMatchesRef {
  _GetMatchesProviderElement(super.provider);

  @override
  String get startDate => (origin as GetMatchesProvider).startDate;
  @override
  String get endDate => (origin as GetMatchesProvider).endDate;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
