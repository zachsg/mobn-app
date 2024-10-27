import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../../models/xmodels.dart';
import '../in_mob.dart';

class ActivityWidget extends ConsumerWidget {
  const ActivityWidget({super.key, required this.mob});

  final MMobModel mob;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(inMobProvider);

    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              width: 64,
              height: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Activity',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: provider.day.actions.length,
                itemBuilder: (context, index) {
                  final action = provider.day.actions[index];
                  final mateName = mob.goals
                      .firstWhere((goal) => goal.mateID == action.mateID)
                      .mateName;

                  return ListTile(
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    leading: Icon(Icons.circle, size: 10),
                    title: Text(
                        '$mateName ${mob.habitType.name.habitDid().toLowerCase()} for ${action.minutes} minutes.'),
                    subtitle: Text(action.date.friendlyTime()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
