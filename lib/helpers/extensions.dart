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
