import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobn/helpers/constants.dart';

import '../models/xmodels.dart';
import 'app_colors.dart';

extension DateTimeExtension on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  String friendlyTime() {
    final DateFormat formatter = DateFormat('h:mm a');
    return formatter.format(this);
  }

  String friendlyYesterday() {
    final DateFormat formatter = DateFormat('MMM d');
    return formatter.format(this);
  }

  String monthNameLong() {
    final DateFormat formatter = DateFormat('MMMM');
    return formatter.format(this);
  }

  String longform() {
    final DateFormat formatter = DateFormat('MMMM dd, yyyy');
    return formatter.format(this);
  }

  int weekNumber() {
    final now = DateTime.now().copyWith(month: 1, day: 1);
    final from = DateTime.utc(now.year, now.month, now.day);
    return (difference(from).inDays / 7).ceil();
  }

  String dayOfWeekLetter() {
    final formatter = DateFormat('EEEE');

    final day = formatter.format(this);

    switch (day) {
      case 'Sunday':
        return 'S';
      case 'Monday':
        return 'M';
      case 'Tuesday':
        return 'T';
      case 'Wednesday':
        return 'W';
      case 'Thursday':
        return 'T';
      case 'Friday':
        return 'F';
      case 'Saturday':
        return 'S';
      default:
        return '';
    }
  }
}

extension HabitTypeExtension on MHabitType {
  IconData toIcon() {
    switch (this) {
      case MHabitType.cook:
        return cookIcon;
      case MHabitType.draw:
        return drawIcon;
      case MHabitType.exercise:
        return exerciseIcon;
      case MHabitType.journal:
        return journalIcon;
      case MHabitType.meditate:
        return meditateIcon;
      case MHabitType.paint:
        return paintIcon;
      case MHabitType.read:
        return readIcon;
      case MHabitType.write:
        return writeIcon;
    }
  }
}

extension StringExtension on String {
  String habitDoing() {
    switch (toLowerCase()) {
      case 'cook':
        return 'Cooking';
      case 'draw':
        return 'Drawing';
      case 'exercise':
        return 'Exercising';
      case 'journal':
        return 'Journaling';
      case 'meditate':
        return 'Meditating';
      case 'paint':
        return 'Painting';
      case 'read':
        return 'Reading';
      case 'write':
        return 'Writing';

      default:
        return 'Growing';
    }
  }

  String habitDid() {
    switch (toLowerCase()) {
      case 'cook':
        return 'Cooked';
      case 'draw':
        return 'Drew';
      case 'exercise':
        return 'Exercised';
      case 'journal':
        return 'Journaled';
      case 'meditate':
        return 'Meditated';
      case 'paint':
        return 'Painted';
      case 'read':
        return 'Read';
      case 'write':
        return 'Wrote';
      default:
        return 'Grew';
    }
  }

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

extension ShowSnackBar on BuildContext {
  void showSnackBar({
    required String message,
    int seconds = 4,
    SnackBarBehavior behavior = SnackBarBehavior.fixed,
  }) {
    ScaffoldMessenger.of(this).removeCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      duration: Duration(seconds: seconds),
      content: Text(message),
      behavior: behavior,
    ));
  }

  void showErrorSnackBar({
    required String message,
    SnackBarBehavior behavior = SnackBarBehavior.fixed,
  }) {
    showSnackBar(message: message, behavior: behavior);
  }
}

extension IntExtension on int {
  String toMonthLong() {
    switch (this) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return DateTime.now().month.toString();
    }
  }

  Color toColor() {
    switch (this) {
      case 0:
        return AppColors.one;
      case 1:
        return AppColors.two;
      case 2:
        return AppColors.three;
      case 3:
        return AppColors.four;
      case 4:
        return AppColors.five;
      case 5:
        return AppColors.six;
      case 6:
        return AppColors.seven;
      case 7:
        return AppColors.eight;
      case 8:
        return AppColors.nine;
      case 9:
        return AppColors.ten;
      default:
        return AppColors.eleven.withOpacity(0.2);
    }
  }

  String toMonthShort() {
    switch (this) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return DateTime.now().month.toString();
    }
  }

  String toWeekdayLong() {
    switch (this) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return 'n/a';
    }
  }

  String toWeekdayShort() {
    switch (this) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thur';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return 'n/a';
    }
  }

  String toTimeShort() {
    if (this < 60) {
      return '${this}m';
    } else {
      if (this % 60 == 0) {
        final hours = (this / 60).round();
        return hours == 1 ? '${hours}h' : '${hours}h';
      } else {
        final hours = (this / 60).floor();
        final minutes = this % 60;
        return hours == 1 ? '${hours}h ${minutes}m' : '${hours}h ${minutes}m';
      }
    }
  }

  String toTimeLong() {
    if (this < 60) {
      return '${this}min';
    } else {
      if (this % 60 == 0) {
        final hours = (this / 60).round();
        return hours == 1 ? '${hours}hr' : '${hours}hrs';
      } else {
        final hours = (this / 60).floor();
        final minutes = this % 60;
        return hours == 1
            ? '${hours}hr ${minutes}min'
            : '${hours}hrs ${minutes}min';
      }
    }
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
