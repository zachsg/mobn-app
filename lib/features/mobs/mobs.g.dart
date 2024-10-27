// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobs.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mobsStreamHash() => r'e4f09b41c417812ee889bbf991144616b5468564';

/// See also [mobsStream].
@ProviderFor(mobsStream)
final mobsStreamProvider = AutoDisposeStreamProvider<List<MMobModel>>.internal(
  mobsStream,
  name: r'mobsStreamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mobsStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MobsStreamRef = AutoDisposeStreamProviderRef<List<MMobModel>>;
String _$mobsHash() => r'db63f99df63ea9903f4e3288f31b3bcb7bfdd574';

/// See also [Mobs].
@ProviderFor(Mobs)
final mobsProvider = NotifierProvider<Mobs, MobsModel>.internal(
  Mobs.new,
  name: r'mobsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mobsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Mobs = Notifier<MobsModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
