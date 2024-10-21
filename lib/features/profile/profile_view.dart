import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobn/models/m_profile_model.dart';

import '../../helpers/constants.dart';
import '../settings/settings_view.dart';
import 'profile.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileStream = ref.watch(profileStreamProvider);

    return switch (profileStream) {
      AsyncValue(:final error?) => Text('Error: $error'),
      AsyncValue(:final valueOrNull?) =>
        ProfileViewWidget(profile: valueOrNull),
      _ => const CircularProgressIndicator(),
    };
  }
}

class ProfileViewWidget extends ConsumerWidget {
  const ProfileViewWidget({super.key, required this.profile});

  final MProfileModel profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profileLabel),
        actions: [
          IconButton(
            onPressed: () => context.pushNamed(SettingsView.routeName),
            icon: Icon(settingsIcon),
          ),
        ],
      ),
      body: Center(
        child: Text(profile.email),
      ),
    );
  }
}
