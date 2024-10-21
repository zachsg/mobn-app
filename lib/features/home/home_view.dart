import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobn/features/home/widgets/calendar_widget.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../helpers/constants.dart';
import '../../models/xmodels.dart';
import '../mobs/mobs.dart';
import '../mobs/mobs_view.dart';
import '../notifications/notifications_view.dart';
import '../profile/profile.dart';
import '../profile/profile_view.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileStream = ref.watch(profileStreamProvider);

    return switch (profileStream) {
      AsyncValue(:final error?) => Text('Error: $error'),
      AsyncValue(:final valueOrNull?) => HomeViewPart2(profile: valueOrNull),
      _ => const CircularProgressIndicator(),
    };
  }
}

class HomeViewPart2 extends ConsumerWidget {
  const HomeViewPart2({super.key, required this.profile});

  final MProfileModel profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mobsStream = ref.watch(mobsStreamProvider);

    return switch (mobsStream) {
      AsyncValue(:final error?) => Text('Error: $error'),
      AsyncValue(:final valueOrNull?) => HomeViewWidget(
          mobs: valueOrNull,
          profile: profile,
          hasMobs: true,
        ),
      _ => HomeViewWidget(
          mobs: [],
          profile: profile,
          hasMobs: false,
        ),
    };
  }
}

class HomeViewWidget extends ConsumerWidget {
  const HomeViewWidget({
    super.key,
    required this.mobs,
    required this.profile,
    required this.hasMobs,
  });

  final List<MMobModel> mobs;
  final MProfileModel profile;
  final bool hasMobs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = DateTime.now().longform();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pushNamed(ProfileView.routeName),
          icon: Icon(profileIcon),
        ),
        actions: [
          IconButton(
            onPressed: () => context.pushNamed(NotificationsView.routeName),
            icon: Badge.count(
              count: 1,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: Icon(notificationsIcon),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mainPadding),
            child: Text(
              date,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mainPadding),
            child: Text(
              '${greeting()}, ${profile.name.isEmpty ? 'Anon' : profile.name.capitalize()}',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 4.0),
          if (hasMobs) CalendarWidget(mobs: mobs, profile: profile),
          const SizedBox(height: 16.0),
          hasMobs
              ? MobsWidget(mobs: mobs, profile: profile)
              : MobsHeaderWidget(profile: profile),
          const SizedBox(height: 32.0),
        ],
      ),
    );
  }

  String greeting() {
    final now = DateTime.now();

    switch (now.hour) {
      case < 12:
        return 'Morning';
      case < 17:
        return 'Afternoon';
      case < 20:
        return 'Evening';
      default:
        return 'Night';
    }
  }
}
