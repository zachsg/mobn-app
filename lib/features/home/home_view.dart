import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobn/features/home/widgets/calendar_widget.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../helpers/constants.dart';
import '../notifications/notifications_view.dart';
import '../profile/profile_view.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  static const routeName = '/home';

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
              '${greeting()}, Zach',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 4.0),
          CalendarWidget(),
          const SizedBox(height: 24.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mainPadding),
            child: Text(
              'Mobs',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mainPadding),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(cornerRadiusDefault)),
                border:
                    Border.all(color: Theme.of(context).colorScheme.primary),
              ),
              child: Material(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(cornerRadiusDefault)),
                ),
                child: ListTile(
                  // TODO: if you're done for the day, change to filled circle with color
                  leading: true
                      ? Icon(
                          Icons.circle_outlined,
                          color: Theme.of(context).colorScheme.surface,
                          size: 28,
                        )
                      : Icon(
                          Icons.circle,
                          color: doneColor,
                          size: 32,
                        ),
                  title: Text(
                    'Reading',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.face,
                        color: doneColor,
                        size: 20,
                      ),
                      Icon(
                        Icons.face,
                        color: partDoneColor,
                        size: 20,
                      ),
                      Icon(
                        Icons.face,
                        color: Theme.of(context).colorScheme.surface,
                        size: 20,
                      ),
                    ],
                  ),
                  // Text('3 additional mob mates'),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Theme.of(context).colorScheme.surface,
                    size: 28,
                  ),
                  tileColor: Theme.of(context).colorScheme.onSurface,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(cornerRadiusDefault)),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ),
          const SizedBox(height: 32.0),
        ],
      ),
    );
  }

  String greeting() {
    final now = DateTime.now();

    switch (now.hour) {
      case < 10:
        return 'Morning';
      case < 16:
        return 'Afternoon';
      case < 19:
        return 'Evening';
      default:
        return 'Night';
    }
  }
}
