import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(settingsLabel),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          child: Text('Log Out'),
        ),
      ),
    );
  }
}
