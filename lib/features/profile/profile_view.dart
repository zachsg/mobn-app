import 'package:flutter/material.dart';

import '../../helpers/labels.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  static const routeName = '/profile';

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profileLabel),
      ),
      body: Center(
        child: Text(profileLabel),
      ),
    );
  }
}
