import 'package:flutter/material.dart';

import 'calendar_item_done_widget.dart';
import 'calendar_item_not_done_widget.dart';
import 'calendar_item_part_done_widget.dart';

class CalendarLegendWidget extends StatelessWidget {
  const CalendarLegendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        children: [
          const SizedBox(width: 32.0),
          CalendarItemDoneWidget(size: 16.0),
          const SizedBox(width: 16),
          CalendarItemPartDoneWidget(size: 16.0),
          const SizedBox(width: 16),
          CalendarItemNotDoneWidget(size: 16.0),
        ],
      ),
    );
  }
}
