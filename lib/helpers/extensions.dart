import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
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

extension StringExtension on String {
  String habitDoing() {
    switch (toLowerCase()) {
      case 'cook':
        return 'Cooking';
      case 'draw':
        return 'Drawing';
      case 'exercise':
        return 'Exercising';
      case 'meditate':
        return 'Meditating';
      case 'read':
        return 'Reading';
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
      case 'meditate':
        return 'Meditated';
      case 'read':
        return 'Read';
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
