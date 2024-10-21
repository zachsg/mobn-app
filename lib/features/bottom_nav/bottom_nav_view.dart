import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/constants.dart';
import '../../models/xmodels.dart';
import '../home/home_view.dart';
import '../learn/learn_view.dart';
import '../profile/profile.dart';
import '../settings/settings_view.dart';
import '../widgets/xwidgets.dart';

class BottomNavView extends ConsumerWidget {
  const BottomNavView({super.key});

  static const routeName = '/bottom_nav';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileStream = ref.watch(profileStreamProvider);

    return switch (profileStream) {
      AsyncValue(:final error?) => Text('Error: $error'),
      AsyncValue(:final valueOrNull?) =>
        BottomNavViewWidget(profile: valueOrNull),
      _ => Scaffold(
          body: const CircularProgressIndicator(),
        ),
    };
  }
}

class BottomNavViewWidget extends ConsumerStatefulWidget {
  const BottomNavViewWidget({super.key, required this.profile});

  final MProfileModel profile;

  @override
  ConsumerState<BottomNavViewWidget> createState() =>
      _BottomNavViewWidgetState();
}

class _BottomNavViewWidgetState extends ConsumerState<BottomNavViewWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final body = index == 0
        ? const HomeView()
        : index == 1
            ? const LearnView()
            : const SettingsView();

    return Scaffold(
      body: widget.profile.acceptedTerms ? body : EulaWidget(),
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
        ],
        height: 64,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
    );
  }
}
