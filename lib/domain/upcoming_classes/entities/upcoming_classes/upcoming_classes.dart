import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/enums.dart';
part 'upcoming_classes.freezed.dart';

@freezed
class UpcomingClasses with _$UpcomingClasses {
  const UpcomingClasses._();
  const factory UpcomingClasses({
    required String id,
    required String teacherId,
    required String teacherName,
    required String subject,
    required String grade,
    required String title,
    required LessonType lessonType,
    required DateTime date,
    required String from,
    required String to,
  }) = _UpcomingClasses;
}
