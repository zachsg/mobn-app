import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';
import 'calendar_legend_item_widget.dart';

class CalendarItemPartDoneWidget extends StatelessWidget {
  const CalendarItemPartDoneWidget({
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
      label: partDoneLabel,
      color: partDoneColor,
      isFilled: true,
      showLabel: showLabel,
      isToday: isToday,
      size: size,
    );
  }
}
