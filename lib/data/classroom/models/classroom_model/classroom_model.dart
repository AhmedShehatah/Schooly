import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/classroom/entities/classroom/classroom.dart';
part 'classroom_model.freezed.dart';
part 'classroom_model.g.dart';

@freezed
class ClassroomModel with _$ClassroomModel {
  const ClassroomModel._();
  const factory ClassroomModel({
    required String id,
    required String teacherId,
    required String subject,
    required String grade,
  }) = _ClassroomModel;

  factory ClassroomModel.fromJson(Map<String, dynamic> json) =>
      _$ClassroomModelFromJson(json);
  Classroom toEntity() => Classroom(
        id: id,
        teacherId: teacherId,
        subject: subject,
        grade: grade,
      );
}
/**
 * 
 * 
 *  "id": "e082bf29-033a-4b1f-bdc4-08dd584749a7",
      "teacherId": "",
      "subject": "رياضه",
      "grade": "اولي ثانوي"
 */