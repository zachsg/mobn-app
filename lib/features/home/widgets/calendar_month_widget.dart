import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobn/features/home/widgets/xwidgets.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../../helpers/constants.dart';
import '../../../models/xmodels.dart';

class CalendarMonthWidget extends StatelessWidget {
  const CalendarMonthWidget({
    super.key,
    required this.date,
    required this.startDate,
    required this.profile,
    required this.habitType,
  });

  final DateTime date;
  final DateTime startDate;
  final MProfileModel profile;
  final MHabitType habitType;

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;

    final firstDayOfMonth = DateTime(
      date.year,
      date.month,
      1,
    );

    final lastDayOfMonth = DateTime(
      date.year,
      date.month + 1,
      0,
    );

    int count = 0;
    int extraCount = 0;
    bool shouldIncludeLabel = false;
    final today = DateTime.now();

    final formatter = DateFormat('EEEE');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cornerRadiusDefault),
            ),
            color: Theme.of(context).colorScheme.onSurface,
            margin: EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    date.monthNameLong(),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.surface),
                  ),
                  const SizedBox(height: 4.0),
                  SizedBox(
                    height: windowSize.width * 0.6,
                    width: windowSize.width,
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
                          return const SizedBox();
                        } else if (index < lastDayOfMonth.day + count) {
                          final d = date
                              .copyWith(day: 1, minute: 0)
                              .add(Duration(days: index - count));

                          if (d.isToday()) {
                            return _calendarDotForDate(
                              startDate: startDate,
                              date: DateTime.now(),
                              isToday: true,
                            );
                          } else if (d.day > today.day &&
                              d.month == today.month) {
                            return CalendarItemFutureWidget(showLabel: false);
                          } else {
                            return _calendarDotForDate(
                              startDate: startDate,
                              date: d,
                            );
                          }
                        } else {
                          extraCount += 1;

                          if (!shouldIncludeLabel) {
                            final day = formatter.format(
                                lastDayOfMonth.add(Duration(days: extraCount)));

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
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .surface),
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
        ],
      ),
    );
  }

  Widget _calendarDotForDate({
    required DateTime startDate,
    required DateTime date,
    bool isToday = false,
  }) {
    int timeSpent = _timeSpentOnDate(date);

    final goalMinutes = _goalMinutes();

    if (timeSpent >= goalMinutes) {
      return CalendarItemDoneWidget(
        showLabel: false,
        isToday: isToday,
      );
    } else if (timeSpent > 0) {
      return CalendarItemPartDoneWidget(
        showLabel: false,
        isToday: isToday,
      );
    } else {
      final isBeforeStart = date.isBefore(startDate.add(Duration(days: -1)));

      if (timeSpent == 0 && !isToday && !isBeforeStart) {
        return CalendarItemNotDoneWidget(showLabel: false, isToday: isToday);
      } else {
        return CalendarItemFutureWidget(
          showLabel: false,
          isToday: isToday,
        );
      }
    }
  }

  int _goalMinutes() {
    return profile.goals
        .firstWhere((goal) => goal.habitType == habitType)
        .minutes;
  }

  int _timeSpentOnDate(DateTime date) {
    int timeSpent = 0;

    final startOfDay = date.copyWith(hour: 0, minute: 0, second: 0);
    final endOfDay = date.copyWith(hour: 23, minute: 59, second: 59);

    final actions =
        profile.actions.where((action) => action.habitType == habitType);

    for (final action in actions) {
      if (action.date.isAfter(startOfDay) && action.date.isBefore(endOfDay)) {
        timeSpent += action.minutes;
      }
    }

    return timeSpent;
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
