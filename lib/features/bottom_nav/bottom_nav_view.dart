import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../mobs/mobs_view.dart';
import '../profile/profile_view.dart';
import '../settings/settings_view.dart';
import '../widgets/xwidgets.dart';

class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  static const routeName = '/bottom_nav';

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int index = 0;
  bool acceptedTerms = false;

  @override
  void initState() {
    // TODO: Load profile, mobs, etc.
    // Set accepted terms to whatever is true on profile.
    acceptedTerms = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final body = index == 0
        ? const MobsView()
        : index == 1
            ? const ProfileView()
            : const SettingsView();

    return Scaffold(
      body: acceptedTerms ? body : EulaWidget(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (newIndex) => setState(() => index = newIndex),
        destinations: [
          NavigationDestination(
            icon: Icon(mobsIcon),
            label: mobsLabel,
          ),
          NavigationDestination(
            icon: Icon(profileIcon),
            label: profileLabel,
          ),
          NavigationDestination(
            icon: Icon(settingsIcon),
            label: settingsLabel,
          ),
        ],
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
    );
  }
}
