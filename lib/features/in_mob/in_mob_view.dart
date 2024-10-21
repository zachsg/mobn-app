import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../helpers/constants.dart';
import '../../models/xmodels.dart';
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
  @override
  void initState() {
    loadProviders();
    super.initState();
  }

  Future<void> loadProviders() async {
    final day = ref.read(inMobProvider).dayRequested;
    await ref.read(inMobProvider.notifier).loadDay(mob: widget.mob, date: day);
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(inMobProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.mob.habitType.name.habitDoing()} Mob'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(mainPadding),
        child: provider.loading
            ? Center(child: CircularProgressIndicator())
            : Column(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Begin habit timer/stopwatch
        },
        child: Icon(incrementIcon),
      ),
    );
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

    final firstSection = PieChartSectionData(
      color: Colors.red,
      value: 40,
      title: '40%',
      radius: 100,
      titleStyle: Theme.of(context).textTheme.labelSmall,
      badgeWidget: CircleAvatar(),
      badgePositionPercentageOffset: .98,
    );

    final secondSection = PieChartSectionData(
      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
      value: 60,
      title: '60%',
      radius: 100,
      titleStyle: Theme.of(context).textTheme.labelSmall,
      badgeWidget: CircleAvatar(
        child: Text('Z'),
      ),
      badgePositionPercentageOffset: .98,
    );

    sections.add(firstSection);
    sections.add(secondSection);

    return sections;
  }
}
