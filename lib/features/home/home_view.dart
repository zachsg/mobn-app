import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../helpers/constants.dart';
import '../notifications/notifications_view.dart';
import '../profile/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final firstDayOfMonth = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      1,
    );

    final lastDayOfMonth = DateTime(
      DateTime.now().year,
      DateTime.now().month + 1,
      0,
    );

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
              'October 15, 2024',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Hello, Zach',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'October',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 240,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0,
                          crossAxisCount: 7,
                        ),
                        itemCount: lastDayOfMonth.day +
                            _extraItemCount(firstDayOfMonth),
                        itemBuilder: (context, index) {
                          return CircleAvatar();
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 16,
                          child: Text(
                            'M',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SizedBox(
                          width: 16,
                          child: Text(
                            'T',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SizedBox(
                          width: 16,
                          child: Text(
                            'W',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SizedBox(
                          width: 16,
                          child: Text(
                            'T',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SizedBox(
                          width: 16,
                          child: Text(
                            'F',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SizedBox(
                          width: 16,
                          child: Text(
                            'S',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SizedBox(
                          width: 16,
                          child: Text(
                            'S',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 2),
                Text(
                  'Goal met',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: Colors.green),
                ),
                const SizedBox(width: 20),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.yellow,
                  ),
                ),
                const SizedBox(width: 2),
                Text(
                  'Took action',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: Colors.yellow),
                ),
                const SizedBox(width: 20),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 2),
                Text(
                  'Rest day',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: Colors.red),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'To-do Today',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListTile(
              leading: Icon(Icons.lightbulb),
              title: Text('Meditate'),
              trailing: Icon(Icons.chevron_right),
              tileColor: Theme.of(context).colorScheme.primaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Done Today',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Time to take action!',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          )
        ],
      ),
    );
  }

  int _extraItemCount(DateTime firstDayOfMonth) {
    final formatter = DateFormat('EEEE');

    final day = formatter.format(firstDayOfMonth);

    switch (day) {
      case 'Sunday':
        return 0;
      case 'Monday':
        return 1;
      case 'Tuesday':
        return 2;
      case 'Wednesday':
        return 3;
      case 'Thursday':
        return 4;
      case 'Friday':
        return 5;
      case 'Saturday':
        return 6;
      default:
        return 0;
    }
  }
}
