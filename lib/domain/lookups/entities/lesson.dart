import 'package:freezed_annotation/freezed_annotation.dart';
part 'lesson.freezed.dart';

@Freezed(toJson: false, fromJson: false)
class Lesson with _$Lesson {
  const Lesson._();
  const factory Lesson({
    required String id,
    required String title,
  }) = _Lesson;
}
