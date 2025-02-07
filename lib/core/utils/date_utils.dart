import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
}
