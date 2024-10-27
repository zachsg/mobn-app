import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/xmodels.dart';
import '../../services/database.dart';
import 'profile_model.dart';

part 'profile.g.dart';

@Riverpod(keepAlive: true)
class Profile extends _$Profile {
  @override
  ProfileModel build() => ProfileModel(
        loading: false,
      );

  Future<void> loadProfile() async {
    await Database.loadProfile();
  }

  Future<bool> updateProfile(MProfileModel profile) async {
    return await Database.updateProfile(profile);
  }

  Future<void> acceptTerms() async {
    state = state.copyWith(loading: true);

    await Database.acceptTerms();

    state = state.copyWith(loading: false);
  }
}

@riverpod
Stream<MProfileModel> profileStream(Ref ref) {
  final user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    throw AssertionError('User can\'t be null');
  }

  return Database.streamProfile(user);
}
