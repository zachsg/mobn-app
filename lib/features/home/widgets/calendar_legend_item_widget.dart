import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';

class CalendarLegendItemWidget extends StatelessWidget {
  const CalendarLegendItemWidget({
    super.key,
    required this.label,
    required this.color,
    required this.isFilled,
    this.showLabel = true,
    this.isToday = false,
    this.size = calendarItemDefaultSize,
  });

  final String label;
  final Color color;
  final bool isFilled;
  final bool showLabel;
  final bool isToday;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isFilled ? color : color.withOpacity(0.2),
              ),
            ),
            if (isToday)
              Container(
                width: size * 1.9,
                height: size * 1.9,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: color,
                    width: 2,
                  ),
                ),
              )
          ],
        ),
        const SizedBox(width: 2),
        if (showLabel)
          Opacity(
            opacity: 0.7,
            child: Text(
              label,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
      ],
    );
  }
}
