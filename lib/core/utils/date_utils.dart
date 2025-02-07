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
}
