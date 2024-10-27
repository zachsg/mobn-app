import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../helpers/constants.dart';
import '../../models/xmodels.dart';
import '../../services/database.dart';
import 'profile_setup_model.dart';

part 'profile_setup.g.dart';

@riverpod
class ProfileSetup extends _$ProfileSetup {
  @override
  ProfileSetupModel build() => ProfileSetupModel(
        loading: false,
      );

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setHandle(String handle) {
    state = state.copyWith(handle: handle.replaceAll(' ', '').toLowerCase());
  }

  void setAvatar() {
    /// TODO: create and save user-chosen avatar
  }

  void setHandleError(String error) {
    state = state.copyWith(handleError: error);
  }

  void setNameError(String error) {
    state = state.copyWith(nameError: error);
  }

  Future<bool> validateHandle() async {
    state = state.copyWith(loading: true);
    final handleIsUnique = await Database.validateHandle(state.handle);

    state = state.copyWith(
      handleError: handleIsUnique ? '' : handleNotUniqueErrorLabel,
      loading: false,
    );

    return handleIsUnique;
  }

  Future<void> createProfile() async {
    if (state.name.isEmpty) {
      state = state.copyWith(nameError: nameBlankErrorLabel, loading: false);
      return;
    } else {
      state = state.copyWith(nameError: '', loading: false);
    }

    if (state.handle.isEmpty) {
      state =
          state.copyWith(handleError: handleBlankErrorLabel, loading: false);
      return;
    } else {
      state = state.copyWith(handleError: '', loading: false);
    }

    final user = FirebaseAuth.instance.currentUser;

    final handleIsUnique = await validateHandle();

    if (handleIsUnique) {
      state = state.copyWith(loading: true);

      if (user != null) {
        final profile = MProfileModel(
          id: user.uid,
          email: user.email ?? '',
          name: state.name,
          handle: state.handle,
        );

        await Database.createProfile(profile);
      }

      state = state.copyWith(loading: false);
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
