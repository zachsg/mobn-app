import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final GlobalKey<FormState> _authFormKey = GlobalKey<FormState>();

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  var email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobn'),
      ),
      body: Form(
        key: _authFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (value) {
                email = value;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_authFormKey.currentState!.validate()) {
                    var acs = ActionCodeSettings(
                      url: 'https://mobn-inc.firebaseapp.com/',
                      handleCodeInApp: true,
                      iOSBundleId: 'io.mobn.mobn',
                      androidPackageName: 'io.mobn.mobn',
                      androidInstallApp: true,
                      androidMinimumVersion: '12',
                    );

                    FirebaseAuth.instance
                        .sendSignInLinkToEmail(
                            email: email, actionCodeSettings: acs)
                        .catchError((onError) =>
                            print('Error sending email verification $onError'))
                        .then((value) =>
                            print('Successfully sent email verification'));
                  }
                },
                child: const Text('Sign In'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
