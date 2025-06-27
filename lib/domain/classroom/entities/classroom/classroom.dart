import 'package:freezed_annotation/freezed_annotation.dart';
part 'classroom.freezed.dart';

@Freezed(toJson: false, fromJson: false)
class Classroom with _$Classroom {
  const Classroom._();
  const factory Classroom({
    required String id,
    required String teacherId,
    required String subject,
    required String grade,
  }) = _Classroom;
}
