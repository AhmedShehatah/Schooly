import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/lookups/entities/lesson.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

@freezed
class LessonModel with _$LessonModel {
  const LessonModel._();
  const factory LessonModel({
    required String id,
    required String classRoomId,
    required String title,
    required String grade,
    required String subject,
  }) = _LessonModel;

  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);
  Lesson toEntity() => Lesson(
        id: id,
        title: title,
      );
}
