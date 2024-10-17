import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../../helpers/constants.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final firstDayOfMonth = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      1,
    );

    final lastDayOfMonth = DateTime(
      DateTime.now().year,
      DateTime.now().month + 1,
      0,
    );

    int count = 0;
    int extraCount = 0;
    bool shouldIncludeLabel = false;
    final today = DateTime.now();

    final formatter = DateFormat('EEEE');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: Theme.of(context).colorScheme.primary),
            ),
            child: Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              margin: EdgeInsets.all(0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 256,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                          crossAxisCount: 7,
                        ),
                        itemCount: lastDayOfMonth.day +
                            _extraItemCount(firstDayOfMonth) +
                            _extraItemCountEnd(lastDayOfMonth),
                        itemBuilder: (context, index) {
                          if (count < _extraItemCount(firstDayOfMonth)) {
                            count += 1;
                            return const Text('');
                          } else if (index < lastDayOfMonth.day + count) {
                            if (index == today.day) {
                              return CalendarItemFutureWidget(
                                  showLabel: false, isToday: true);
                            } else if (index > today.day) {
                              return CalendarItemFutureWidget(showLabel: false);
                            } else {
                              return CalendarItemDoneWidget(showLabel: false);
                            }
                          } else {
                            extraCount += 1;

                            if (!shouldIncludeLabel) {
                              final day = formatter.format(lastDayOfMonth
                                  .add(Duration(days: extraCount)));

                              switch (day) {
                                case 'Sunday':
                                  shouldIncludeLabel = true;
                                default:
                                  shouldIncludeLabel = false;
                              }
                            }

                            if (shouldIncludeLabel) {
                              final label = lastDayOfMonth
                                  .add(Duration(days: extraCount))
                                  .dayOfWeekLetter();

                              return Text(
                                label,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelLarge,
                              );
                            } else {
                              return SizedBox();
                            }
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 6.0),
          const CalendarLegendWidget(),
        ],
      ),
    );
  }

  int _extraItemCount(DateTime firstDayOfMonth) {
    final formatter = DateFormat('EEEE');

    final day = formatter.format(firstDayOfMonth);

    switch (day) {
      case 'Sunday':
        return 0;
      case 'Monday':
        return 1;
      case 'Tuesday':
        return 2;
      case 'Wednesday':
        return 3;
      case 'Thursday':
        return 4;
      case 'Friday':
        return 5;
      case 'Saturday':
        return 6;
      default:
        return 0;
    }
  }

  int _extraItemCountEnd(DateTime lastDayOfMonth) {
    final formatter = DateFormat('EEEE');

    final day = formatter.format(lastDayOfMonth);

    switch (day) {
      case 'Sunday':
        return 13;
      case 'Monday':
        return 12;
      case 'Tuesday':
        return 11;
      case 'Wednesday':
        return 10;
      case 'Thursday':
        return 9;
      case 'Friday':
        return 8;
      case 'Saturday':
        return 7;
      default:
        return 0;
    }
  }
}

class CalendarLegendWidget extends StatelessWidget {
  const CalendarLegendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          CalendarItemDoneWidget(size: 16.0),
          const SizedBox(width: 16),
          CalendarItemPartDoneWidget(size: 16.0),
          const SizedBox(width: 16),
          CalendarItemNotDoneWidget(size: 16.0),
          const SizedBox(width: 16),
          CalendarItemFutureWidget(size: 16.0),
        ],
      ),
    );
  }
}

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
                width: size * 1.75,
                height: size * 1.75,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: color,
                    width: 1,
                  ),
                ),
              )
          ],
        ),
        const SizedBox(width: 2),
        if (showLabel)
          Opacity(
            opacity: 0.6,
            child: Text(
              label,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
      ],
    );
  }
}

class CalendarItemDoneWidget extends StatelessWidget {
  const CalendarItemDoneWidget({
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
      label: 'Done',
      color: Colors.green,
      isFilled: true,
      showLabel: showLabel,
      isToday: isToday,
      size: size,
    );
  }
}

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
      label: 'Part',
      color: Colors.orange,
      isFilled: true,
      showLabel: showLabel,
      isToday: false,
      size: size,
    );
  }
}

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
      label: 'Miss',
      color: Colors.red,
      isFilled: true,
      showLabel: showLabel,
      isToday: isToday,
      size: size,
    );
  }
}

class CalendarItemFutureWidget extends StatelessWidget {
  const CalendarItemFutureWidget({
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
      label: 'Next',
      color: Theme.of(context).colorScheme.primary,
      isFilled: false,
      showLabel: showLabel,
      isToday: isToday,
      size: size,
    );
  }
}
