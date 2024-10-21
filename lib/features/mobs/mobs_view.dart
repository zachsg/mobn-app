import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobn/helpers/extensions.dart';
import 'package:mobn/router.dart';

import '../../helpers/constants.dart';
import '../../models/xmodels.dart';
import '../home/new_mob/new_mob_view.dart';
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
                bottom: 6.0,
              ),
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
                      '${mob.habitType.name.habitDoing().capitalize()} Mob',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    subtitle: Wrap(children: _mobMates(context, mob)),
                    // Text('3 additional mob mates'),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Theme.of(context).colorScheme.surface,
                      size: 28,
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

  List<Widget> _mobMates(BuildContext context, MMobModel mob) {
    List<Widget> children = [];

    for (final goal in mob.goals) {
      final child = Icon(
        Icons.face,
        color: Theme.of(context).colorScheme.surface,
        size: 20,
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
