import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../../models/xmodels.dart';
import 'calendar_legend_widget.dart';
import 'calendar_month_widget.dart';

class CalendarWidget extends ConsumerStatefulWidget {
  const CalendarWidget({super.key, required this.mobs, required this.profile});

  final List<MMobModel> mobs;
  final MProfileModel profile;

  @override
  ConsumerState<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends ConsumerState<CalendarWidget> {
  late PageController pageController;
  late int numMobs;
  late MHabitType mobTypeSelected;
  DateTime startDate = DateTime.now();
  int numOfMonthsToShow = 1;

  @override
  void initState() {
    pageController = PageController(
      initialPage: _initialPage(widget.mobs.first.habitType),
      viewportFraction: 0.87,
      keepPage: true,
    );
    numMobs = widget.mobs.length;
    mobTypeSelected = widget.mobs.first.habitType;
    _showNumMonth(widget.mobs.first.habitType);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (numMobs > 1)
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: SegmentedButton(
              segments: _mobSelectorChildren(),
              selected: {mobTypeSelected},
              onSelectionChanged: (type) {
                setState(() => mobTypeSelected = type.first);
                _showNumMonth(type.first);
                pageController.jumpToPage(numOfMonthsToShow);
              },
            ),
          ),
        SizedBox(
          height: windowSize.width * 0.8,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: numOfMonthsToShow,
            itemBuilder: (context, index) {
              final now = DateTime.now();
              final date = DateTime(
                  now.year, now.month - (numOfMonthsToShow - index - 1), 1);

              return CalendarMonthWidget(
                date: date,
                startDate: startDate,
                profile: widget.profile,
                habitType: mobTypeSelected,
              );
            },
          ),
        ),
        const SizedBox(height: 2.0),
        const CalendarLegendWidget(),
      ],
    );
  }

  int _initialPage(MHabitType type) {
    final goal = widget.profile.goals.firstWhere((g) => g.habitType == type);

    final difference = goal.startDate.difference(DateTime.now());

    return (difference.inDays.abs() / 30).floor() + 1;
  }

  void _showNumMonth(MHabitType type) {
    final goal = widget.profile.goals.firstWhere((g) => g.habitType == type);

    final difference = goal.startDate.difference(DateTime.now());

    setState(() {
      startDate = goal.startDate;
      numOfMonthsToShow = (difference.inDays.abs() / 30).floor() + 1;
    });
  }

  List<ButtonSegment> _mobSelectorChildren() {
    List<ButtonSegment> children = [];

    for (final mob in widget.mobs) {
      final child = ButtonSegment<MHabitType>(
        value: mob.habitType,
        label: Text(mob.habitType.name.habitDoing()),
      );

      children = [...children, child];
    }
    return children;
  }
}
