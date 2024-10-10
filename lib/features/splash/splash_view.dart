import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../auth/auth_view.dart';
import '../bottom_nav/bottom_nav_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const AuthView();
        }

        return const BottomNavView();
      },
    );
  }
}
