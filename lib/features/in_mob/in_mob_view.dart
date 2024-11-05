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
  List<_PieUserModel> pieUsers = [];
  DateTime date = DateTime.now();

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
      body: provider.loading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(mainPadding),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      AspectRatio(
                        aspectRatio: 1.15,
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: PieChart(
                            PieChartData(
                              sectionsSpace: 0,
                              centerSpaceColor:
                                  Theme.of(context).colorScheme.surface,
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
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      style: FilledButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          backgroundColor:
                              Theme.of(context).colorScheme.primaryContainer),
                      onPressed: () {
                        context.pushNamed(
                          TakeActionView.routeName,
                          extra: {
                            'mob': widget.mob,
                            'profile': widget.profile,
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Row(
                          children: [
                            Text(
                                '${widget.mob.habitType.name.capitalize()} for  '),
                            Container(
                              height: 64.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50.0),
                                    bottomRight: Radius.circular(50.0)),
                                color: Theme.of(context).colorScheme.primary,
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
                                                minutesFromIndex(index: index)
                                                    .toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .surface,
                                                    ),
                                              ),
                                              const SizedBox(width: 2.0),
                                              Text(
                                                'min',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall
                                                    ?.copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .surface),
                                              ),
                                            ],
                                          )
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                minutesFromIndex(index: index)
                                                    .toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall
                                                    ?.copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .surface),
                                              ),
                                            ],
                                          );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40.0),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0),
                      ),
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: mainPadding, vertical: 20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Mobmates',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 8.0,
                              children: _mobMates(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
      final color = pieUsers.firstWhere((u) => u.id == goal.mateID).color;

      double completion = 0.0;
      final actions = ref
          .read(inMobProvider)
          .day
          .actions
          .where((a) => a.mateID == goal.mateID && a.date.isSameDayAs(date));
      for (final action in actions) {
        completion += action.minutes;
      }

      completion /= goal.minutes;

      final mate = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(cornerRadiusDefault)),
          border: Border.all(color: Theme.of(context).colorScheme.primary),
        ),
        child: Material(
          color: Theme.of(context).colorScheme.surface,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(cornerRadiusDefault)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      strokeWidth: 8.0,
                      value: completion,
                      color: color,
                    ),
                    Text(
                      name.substring(0, 1),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: color,
                            fontWeight: FontWeight.w900,
                          ),
                    )
                  ],
                ),
                const SizedBox(width: 10.0),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name.isEmpty ? 'Anon' : name,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    Text(
                      handle.isEmpty ? '@...' : '@$handle',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                  ],
                ),
                const SizedBox(width: 12.0),
              ],
            ),
          ),
        ),
      );

      mates.add(mate);
    }

    return mates;
  }

  List<PieChartSectionData> showingSections(BuildContext context) {
    List<PieChartSectionData> sections = [];
    pieUsers = [];

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
        id: goal.mateID,
        name: goal.mateName,
        timeSpent: timeSpent,
        color: index.toColor(),
      );

      pieUsers = [...pieUsers, pieUser];
      index += 1;
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
        title: '',
        radius: 80,
        badgeWidget: user.name.isEmpty
            ? null
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    width: 4.0,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: user.color,
                  child: Text(user.name.substring(0, 1)),
                ),
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
        color: Theme.of(context).colorScheme.onSurface,
        value: emptyTime,
        title: '',
        radius: 80,
      );

      sections = [...sections, section];
    }

    return sections;
  }
}

class _PieUserModel {
  String id;
  String name;
  int timeSpent;
  Color color;

  _PieUserModel({
    required this.id,
    required this.name,
    required this.timeSpent,
    required this.color,
  });
}
