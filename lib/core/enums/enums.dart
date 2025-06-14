import 'package:freezed_annotation/freezed_annotation.dart';

enum UserType {
  @JsonValue(1)
  student,
  @JsonValue(2)
  teacher
}

enum LessonType {
  @JsonValue(0)
  explain,
  @JsonValue(1)
  homeworkSolution,
  @JsonValue(2)
  practice,
  @JsonValue(3)
  revision,
  @JsonValue(4)
  other;
}

enum Gender {
  @JsonValue(0)
  male,
  @JsonValue(1)
  female
}
