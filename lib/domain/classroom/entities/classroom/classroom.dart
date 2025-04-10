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
/**
 *  "id": "e082bf29-033a-4b1f-bdc4-08dd584749a7",
      "teacherId": "",
      "subject": "رياضه",
      "grade": "اولي ثانوي"
 */
