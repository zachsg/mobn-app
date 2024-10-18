import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'calendar_legend_widget.dart';
import 'calendar_month_widget.dart';

class CalendarWidget extends ConsumerWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final windowSize = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: windowSize.width * 0.8,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: PageController(
              viewportFraction: 0.87,
              initialPage: 2,
              keepPage: true,
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              final now = DateTime.now();
              final date = DateTime(now.year, now.month - 2 + index, now.day);

              return CalendarMonthWidget(date: date);
            },
          ),
        ),
        const SizedBox(height: 2.0),
        const CalendarLegendWidget(),
      ],
    );
  }
}
