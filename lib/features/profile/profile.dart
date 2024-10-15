import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/xmodels.dart';
import '../../services/database.dart';
import 'profile_model.dart';

part 'profile.g.dart';

@Riverpod(keepAlive: true)
class Profile extends _$Profile {
  @override
  ProfileModel build() => ProfileModel(
        profile: MProfileModel(
          id: FirebaseAuth.instance.currentUser?.uid ?? '',
          acceptedTerms: true,
        ),
        loading: true,
      );

  Future<void> loadProfile() async {
    final p = await Database.loadProfile();
    state = state.copyWith(profile: p, loading: false);
  }

  Future<bool> updateProfile(MProfileModel profile) async {
    return await Database.updateProfile(profile);
  }

  Future<void> acceptTerms() async {
    state = state.copyWith(loading: true);

    final success = await Database.acceptTerms();
    if (success) {
      await loadProfile();
    }

    state = state.copyWith(loading: false);
  }
}
