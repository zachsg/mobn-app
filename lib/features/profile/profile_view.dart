import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/constants.dart';
import 'profile.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider).profile;

    return Scaffold(
      appBar: AppBar(
        title: Text(profileLabel),
      ),
      body: Center(
        child: Text(profile.email),
      ),
    );
  }
}
