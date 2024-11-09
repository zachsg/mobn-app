import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../../models/xmodels.dart';

class StreakWidget extends ConsumerWidget {
  const StreakWidget({
    super.key,
    required this.habitType,
    required this.profile,
    this.isShort = false,
  });

  final MHabitType habitType;
  final MProfileModel profile;
  final bool isShort;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _streakWidget(context);
  }

  Widget _streakWidget(BuildContext context) {
    var streak = 0;

    DateTime compareDate = DateTime.now();
    final actionsForType = profile.actions
        .where((action) => action.habitType == habitType)
        .toList()
      ..sort((a, b) => b.date.compareTo(a.date));

    final List<DateTime> actionDates = [];
    for (final action in actionsForType) {
      final a = action.date.copyWith(
          hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);

      if (!actionDates.contains(a)) {
        actionDates.add(a);
      }
    }

    for (final date in actionDates) {
      if (date == actionDates.first) {
        final today = date.isSameDayAs(compareDate);
        final yesterday = date.isSameDayAs(compareDate.daysAgo(1));

        if (today || yesterday) {
          streak += 1;
          compareDate = date.daysAgo(1);
        }
      } else if (date.isSameDayAs(compareDate)) {
        streak += 1;
        compareDate = date.daysAgo(1);
      } else {
        break;
      }
    }

    if (streak > 0) {
      if (isShort) {
        return Text('x$streak');
      } else {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.emoji_events, size: 16.0),
              const SizedBox(width: 4.0),
              Text(
                'You\'re on a $streak-day ${habitType.name.habitDoing().toLowerCase()} streak!',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        );
      }
    }

    return const SizedBox();
  }
}
