import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../app/di/injection_container.dart';
import '../localization/localization_manager.dart';

class DateUtility {
  static String formatDate(DateTime? date) {
    if (date == null) {
      return '';
    }
    return DateFormat('dd/MM/yyyy hh:mm a').format(date);
  }

  static String formatDateWithoutTime(DateTime? date) {
    if (date == null) {
      return '';
    }
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String? formatDateRange(DateTimeRange? range) {
    if (range == null) {
      return null;
    }
    return '${DateFormat('dd/MM/yyyy').format(range.start)} - ${DateFormat('dd/MM/yyyy').format(range.end)}';
  }

  static String formatDuration(int seconds) {
    final minutes = (seconds / 60).floor();
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  static String dateToSinceFormat(DateTime? date) {
    final localizations = sl<LocaleCubit>().appLocalizations;
    if (date == null) {
      return '';
    }
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inSeconds < 60) {
      return localizations.nSeconds(difference.inSeconds);
    } else if (difference.inMinutes < 60) {
      return localizations.nMinutes(difference.inMinutes);
    } else if (difference.inHours < 24) {
      return localizations.nHours(difference.inHours);
    } else if (difference.inDays < 30) {
      return localizations.nDays(difference.inDays);
    } else if (difference.inDays < 365) {
      return localizations.nMonths(difference.inDays ~/ 30);
    }
    return localizations.nYears(difference.inDays ~/ 365);
  }

  static String sessionDate(DateTime day, String from, String to) {
    TimeOfDay fromTime = parseTimeOfDay(from);
    TimeOfDay toTime = parseTimeOfDay(to);
    final now = DateTime.now();
    // if lesson today
    if (day.difference(now).inDays.abs() <= 0) {
      // if didn't start
      if (now.hour < fromTime.hour ||
          (now.hour == fromTime.hour && now.minute < fromTime.minute)) {
        String result = '${lz.within} ';

        if (now.hour < fromTime.hour) {
          result += lz.nHours(fromTime.hour - now.hour);
        }
        if (now.hour == fromTime.hour && now.minute < fromTime.minute) {
          result += lz.nMinutes(fromTime.minute - now.minute);
        }
        return result;
      }

      // if started and didn't end
      if (now.hour < toTime.hour ||
          (now.hour == toTime.hour && now.minute < toTime.minute)) {
        return lz.workingNow;
      }

      // if started and ended
      return lz.ended;
    }

    // if lesson not today
    return DateFormat('dd MMM', sl<LocaleCubit>().appLocalizations.localeName)
        .format(day);
  }

  static TimeOfDay parseTimeOfDay(String timeString) {
    final parts = timeString.split(':');
    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);
    return TimeOfDay(hour: hour, minute: minute);
  }

  static String formateTimeOfDay(String timeString) {
    final parts = timeString.split(':');
    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  static bool canJoinSession(DateTime day, String from, String to) {
    TimeOfDay fromTime = parseTimeOfDay(from);
    TimeOfDay toTime = parseTimeOfDay(to);
    final now = DateTime.now();

    // Check if same day
    if (day.year == now.year && day.month == now.month && day.day == now.day) {
      final fromDateTime = DateTime(
          day.year, day.month, day.day, fromTime.hour, fromTime.minute);
      final toDateTime =
          DateTime(day.year, day.month, day.day, toTime.hour, toTime.minute);

      return now.isAfter(fromDateTime) && now.isBefore(toDateTime);
    }

    return false;
  }
}
