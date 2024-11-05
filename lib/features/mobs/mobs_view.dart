import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../helpers/constants.dart';
import '../../models/xmodels.dart';
import '../new_mob/new_mob_view.dart';
import '../in_mob/in_mob_view.dart';

class MobsWidget extends ConsumerWidget {
  const MobsWidget({super.key, required this.mobs, required this.profile});

  final List<MMobModel> mobs;
  final MProfileModel profile;

  static const routeName = '/mobs';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MobsHeaderWidget(profile: profile),
        ListView.builder(
          itemCount: mobs.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final mob = mobs[index];

            return Padding(
              padding: const EdgeInsets.only(
                left: mainPadding,
                right: mainPadding,
                bottom: 2.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(cornerRadiusDefault)),
                  border: Border.all(
                    color: _colorByCompletion(context: context, mob: mob),
                    width: 4.0,
                  ),
                ),
                child: Material(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(cornerRadiusDefault)),
                  ),
                  child: ListTile(
                    leading: Icon(
                      mob.habitType.toIcon(),
                      color: _colorByCompletion(context: context, mob: mob),
                      size: 32,
                    ),
                    title: Text(
                      mob.habitType.name.habitDoing().capitalize(),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    subtitle: Wrap(children: _mobMates(context, mob)),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Theme.of(context).colorScheme.surface,
                      size: 32,
                    ),
                    tileColor: Theme.of(context).colorScheme.onSurface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(cornerRadiusDefault)),
                    ),
                    onTap: () {
                      context.pushNamed(
                        InMobView.routeName,
                        extra: {
                          'mob': mob,
                          'profile': profile,
                        },
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Color _colorByCompletion(
      {required BuildContext context, required MMobModel mob}) {
    final goalMinutes = _goalMinutes(habitType: mob.habitType);
    final timeSpent = _timeSpent(habitType: mob.habitType);

    if (timeSpent == 0) {
      return Theme.of(context).colorScheme.surface;
    } else if (timeSpent < goalMinutes) {
      return partDoneColor;
    } else {
      return doneColor;
    }
  }

  int _goalMinutes({required MHabitType habitType}) {
    return profile.goals
        .firstWhere((goal) => goal.habitType == habitType)
        .minutes;
  }

  int _timeSpent({required MHabitType habitType}) {
    final today = DateTime.now();
    final startOfDay = today.copyWith(hour: 0, minute: 0, second: 0);
    final endOfDay = today.copyWith(hour: 23, minute: 59, second: 59);
    int timeSpent = 0;

    final actions =
        profile.actions.where((action) => action.habitType == habitType);

    for (final action in actions) {
      if (action.date.isAfter(startOfDay) && action.date.isBefore(endOfDay)) {
        timeSpent += action.minutes;
      }
    }

    return timeSpent;
  }

  List<Widget> _mobMates(BuildContext context, MMobModel mob) {
    List<Widget> children = [];

    for (final _ in mob.goals) {
      final child = Icon(
        Icons.face,
        color: Theme.of(context).colorScheme.surface,
        size: 18,
      );
      children = [...children, child];
    }

    return children;
  }
}

class MobsHeaderWidget extends ConsumerWidget {
  const MobsHeaderWidget({super.key, required this.profile});

  final MProfileModel profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mainPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Mobs',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return NewMobView(profile: profile);
                },
              );
            },
            icon: Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}
