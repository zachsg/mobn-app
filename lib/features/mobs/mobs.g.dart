// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobs.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mobsStreamHash() => r'4d30c42387d205c5ee11ec2415f7b5d520af724e';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
