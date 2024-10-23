// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileStreamHash() => r'04e633b8dd5ec90f9b367e523bdd314d4e2a29ab';

/// See also [profileStream].
@ProviderFor(profileStream)
final profileStreamProvider = AutoDisposeStreamProvider<MProfileModel>.internal(
  profileStream,
  name: r'profileStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$profileStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProfileStreamRef = AutoDisposeStreamProviderRef<MProfileModel>;
String _$profileHash() => r'4203056971b31501e46135c782dd877f42695810';

/// See also [Profile].
@ProviderFor(Profile)
final profileProvider = NotifierProvider<Profile, ProfileModel>.internal(
  Profile.new,
  name: r'profileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$profileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Profile = Notifier<ProfileModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
