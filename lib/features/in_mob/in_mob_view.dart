import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobn/features/in_mob/widgets/activity_widget.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../helpers/constants.dart';
import '../../models/xmodels.dart';
import '../take_action/take_action_view.dart';
import 'in_mob.dart';

class InMobView extends ConsumerStatefulWidget {
  const InMobView({super.key, required this.mob, required this.profile});

  final MMobModel mob;
  final MProfileModel profile;

  static const routeName = '/in_mob';

  @override
  ConsumerState<InMobView> createState() => _InMobViewState();
}

class _InMobViewState extends ConsumerState<InMobView> {
  late PageController _pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    final myGoal = widget.profile.goals
        .firstWhere((goal) => goal.habitType == widget.mob.habitType);
    _pageController = PageController(
      viewportFraction: 0.45,
      initialPage: (myGoal.minutes - 5) ~/ 5,
    );

    loadProviders();

    super.initState();
  }

  Future<void> loadProviders() async {
    final day = ref.read(inMobProvider).dayRequested;
    await ref.read(inMobProvider.notifier).loadDay(mob: widget.mob, date: day);

    final myGoal = widget.profile.goals
        .firstWhere((goal) => goal.habitType == widget.mob.habitType);

    ref.read(inMobProvider.notifier).setMinutes(myGoal.minutes);

    timeRemaining();

    setState(() {
      currentPageIndex = (myGoal.minutes - 5) ~/ 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(inMobProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.mob.habitType.name.habitDoing()} Mob'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return ActivityWidget(mob: widget.mob);
                },
              );
            },
            icon: Icon(activityIcon),
          ),
          IconButton(
            onPressed: () {
              // TODO: Go to mob settings page
            },
            icon: Icon(settingsIcon),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(mainPadding),
        child: provider.loading
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      AspectRatio(
                        aspectRatio: 1.0,
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: PieChart(
                            PieChartData(
                              sectionsSpace: 0,
                              centerSpaceRadius: 72,
                              sections: showingSections(context),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          timeRemaining() <= 0
                              ? Icon(
                                  successIcon,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 128,
                                )
                              : Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(
                                      timeRemaining().toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'm',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    children: [
                      Text(
                        'Mob Mates',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: _mobMates(),
                  ),
                ],
              ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              context.pushNamed(
                TakeActionView.routeName,
                extra: {
                  'mob': widget.mob,
                  'profile': widget.profile,
                },
              );
            },
            label: Text(widget.mob.habitType.name.capitalize()),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 12.0),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: PageView.builder(
                    controller: _pageController,
                    scrollDirection: Axis.vertical,
                    onPageChanged: (value) {
                      setState(() {
                        currentPageIndex = value;
                      });

                      ref
                          .read(inMobProvider.notifier)
                          .setMinutes(minutesFromIndex());
                    },
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return currentPageIndex == index
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  minutesFromIndex(index: index).toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 2.0),
                                Text(
                                  'min',
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  minutesFromIndex(index: index).toString(),
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  int timeRemaining() {
    int totalGoalTime = 0;
    for (final goal in widget.mob.goals) {
      totalGoalTime += goal.minutes;
    }

    int totalActionTime = 0;
    for (final action in ref.read(inMobProvider).day.actions) {
      totalActionTime += action.minutes;
    }

    return totalGoalTime - totalActionTime;
  }

  int minutesFromIndex({int index = -1}) {
    if (index == -1) {
      index = currentPageIndex;
    }

    return 5 * index + 5;
  }

  List<Widget> _mobMates() {
    List<Widget> mates = [];

    for (final goal in widget.mob.goals) {
      final name = goal.mateName;
      final handle = goal.mateHandle;
      final mate = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            child: Text(name.isEmpty ? '?' : name.substring(0, 1)),
          ),
          const SizedBox(width: 4.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name.isEmpty ? 'Anon' : name,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                handle.isEmpty ? '@...' : '@$handle',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      );
      mates.add(mate);
    }

    return mates;
  }

  List<PieChartSectionData> showingSections(BuildContext context) {
    List<PieChartSectionData> sections = [];
    List<_PieUserModel> pieUsers = [];

    int totalGoalTime = 0;
    for (final goal in widget.mob.goals) {
      totalGoalTime += goal.minutes;
    }

    int index = 0;
    for (final goal in widget.mob.goals) {
      int timeSpent = 0;

      for (final action in ref.read(inMobProvider).day.actions) {
        if (action.mateID == goal.mateID) {
          timeSpent += action.minutes;
        }
      }

      final pieUser = _PieUserModel(
          name: goal.mateName, timeSpent: timeSpent, color: index.toColor());

      pieUsers = [...pieUsers, pieUser];
    }

    int totalUserTimeSpent = 0;
    for (final user in pieUsers) {
      totalUserTimeSpent += user.timeSpent;
    }

    int biggerTimeSpent = 0;
    bool needsEmptySection = false;

    if (totalUserTimeSpent >= totalGoalTime) {
      biggerTimeSpent = totalUserTimeSpent;
    } else {
      biggerTimeSpent = totalGoalTime;
      needsEmptySection = true;
    }

    for (final user in pieUsers) {
      final section = PieChartSectionData(
        color: user.color,
        value: user.timeSpent.toDouble(),
        title:
            '${((user.timeSpent.toDouble() / biggerTimeSpent) * 100).round().toInt()}%',
        radius: 80,
        badgeWidget: user.name.isEmpty
            ? null
            : CircleAvatar(
                child: Text(user.name.substring(0, 1)),
              ),
        badgePositionPercentageOffset: 1.0,
      );
      sections = [...sections, section];
    }

    if (needsEmptySection) {
      final emptyTime = (totalGoalTime - totalUserTimeSpent).toDouble();
      final percentRemaining =
          (emptyTime / totalGoalTime * 100).round().toInt();

      final section = PieChartSectionData(
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
        value: emptyTime,
        title: percentRemaining == 100 ? '' : '$percentRemaining%',
        radius: 80,
      );

      sections = [...sections, section];
    }

    return sections;
  }
}

class _PieUserModel {
  String name;
  int timeSpent;
  Color color;

  _PieUserModel({
    required this.name,
    required this.timeSpent,
    required this.color,
  });
}
