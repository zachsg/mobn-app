import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';
import 'calendar_legend_item_widget.dart';

class CalendarItemNotDoneWidget extends StatelessWidget {
  const CalendarItemNotDoneWidget({
    super.key,
    this.showLabel = true,
    this.isToday = false,
    this.size = calendarItemDefaultSize,
  });

  final bool showLabel;
  final bool isToday;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CalendarLegendItemWidget(
      label: notDoneLabel,
      color: notDoneColor,
      isFilled: true,
      showLabel: showLabel,
      isToday: isToday,
      size: size,
    );
  }
}
