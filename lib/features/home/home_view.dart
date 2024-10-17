import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:mobn/features/home/widgets/calendar_widget.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../helpers/constants.dart';
import '../notifications/notifications_view.dart';
import '../profile/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              date,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '${greeting()}, Zach',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(height: 16.0),
          CalendarWidget(),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'To-do Today',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                border:
                    Border.all(color: Theme.of(context).colorScheme.primary),
              ),
              child: ListTile(
                leading: Icon(Icons.lightbulb),
                title: Text('Meditate'),
                trailing: Icon(Icons.chevron_right),
                tileColor: Theme.of(context).colorScheme.primaryContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                onTap: () {},
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Done Today',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Time to take action!',
              style: Theme.of(context).textTheme.labelLarge,
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
