import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  static const routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providers: [EmailAuthProvider()],
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) {
          // context.goNamed(HomeView.routeName);
        }),
      ],
      showPasswordVisibilityToggle: true,
      headerBuilder: (context, constraints, shrinkOffset) {
        return Container(
          color: primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/mobn_logo.png',
                width: 128,
              ),
              Text(
                'Mobn',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        );
      },
    );
  }
}
