import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../helpers/constants.dart';
import '../../models/xmodels.dart';
import 'new_mob.dart';

class NewMobView extends ConsumerWidget {
  const NewMobView({super.key, required this.profile});

  final MProfileModel profile;

  static const routeName = 'new_mob';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final minutes = ref.watch(newMobProvider).minutes;
    final loading = ref.watch(newMobProvider).loading;
    final error = ref.watch(newMobProvider).error;

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
                        newMobTitleLabel,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Text(
                        'Habit:',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(width: 8.0),
                      DropdownButton<MHabitType>(
                        value: ref.watch(newMobProvider).habitType,
                        icon: const Icon(
                          Icons.arrow_downward,
                          size: 18,
                        ),
                        elevation: 16,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                        underline: Container(
                          height: 2,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        onChanged: (MHabitType? habit) =>
                            ref.read(newMobProvider.notifier).setHabit(habit),
                        items: MHabitType.values
                            .map<DropdownMenuItem<MHabitType>>(
                                (MHabitType habit) {
                          return DropdownMenuItem<MHabitType>(
                            value: habit,
                            child: Text(habit.name.habitDoing().capitalize()),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        'Goal:',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          minimumSize: Size(32, 32),
                        ),
                        onPressed: minutes > 5
                            ? ref.read(newMobProvider.notifier).decrementMinutes
                            : null,
                        child: Icon(decrementIcon),
                      ),
                      Text(
                        '$minutes',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          minimumSize: Size(32, 32),
                        ),
                        onPressed:
                            ref.read(newMobProvider.notifier).incrementMinutes,
                        child: Icon(incrementIcon),
                      ),
                      Text(
                        'min/day',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  if (minutes > 20)
                    Row(
                      children: [
                        Icon(
                          infoIcon,
                          size: 24,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.6),
                        ),
                        const SizedBox(width: 6.0),
                        Expanded(
                          child: Text(
                            'If you\'re new to '
                            '${ref.watch(newMobProvider).habitType.name.habitDoing().capitalize()}'
                            ', we recommend starting smaller and increasing over time.',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurface
                                      .withOpacity(0.6),
                                ),
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 24.0),
                  loading
                      ? CircularProgressIndicator()
                      : FilledButton(
                          onPressed: loading
                              ? null
                              : () async {
                                  await ref
                                      .read(newMobProvider.notifier)
                                      .createMob(profile);
                                  final e = ref.read(newMobProvider).error;

                                  if (e == null && context.mounted) {
                                    Navigator.pop(context);
                                  }
                                },
                          child: Text(createLabel),
                        ),
                  if (error != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Wrap(
                        children: [
                          Text(
                            error,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: Theme.of(context).colorScheme.error),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
