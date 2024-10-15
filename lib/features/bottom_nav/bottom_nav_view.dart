import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/constants.dart';
import '../home/home_view.dart';
import '../learn/learn_view.dart';
import '../profile/profile.dart';
import '../settings/settings_view.dart';
import '../widgets/xwidgets.dart';

class BottomNavView extends ConsumerStatefulWidget {
  const BottomNavView({super.key});

  static const routeName = '/bottom_nav';

  @override
  ConsumerState<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends ConsumerState<BottomNavView> {
  int index = 0;

  Future<void> loadProviders() async {
    ref.read(profileProvider.notifier).loadProfile();
  }

  @override
  void initState() {
    loadProviders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final body = index == 0
        ? const HomeView()
        : index == 1
            ? const LearnView()
            : const SettingsView();

    return Scaffold(
      body: ref.watch(profileProvider).profile.acceptedTerms
          ? body
          : EulaWidget(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (newIndex) => setState(() => index = newIndex),
        destinations: [
          NavigationDestination(
            icon: Icon(homeIcon),
            label: homeLabel,
          ),
          NavigationDestination(
            icon: Icon(learnIcon),
            label: learnLabel,
          ),
          NavigationDestination(
            icon: Icon(settingsIcon),
            label: settingsLabel,
          ),
        ],
        height: 64,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
    );
  }
}
