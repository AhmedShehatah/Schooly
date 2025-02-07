import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/upcoming_classes/entities/upcoming_classes.dart';
part 'upcoming_classes_model.freezed.dart';
part 'upcoming_classes_model.g.dart';

@freezed
class UpcomingClassesModel with _$UpcomingClassesModel {
  const UpcomingClassesModel._();
  const factory UpcomingClassesModel({
    required String id,
    required String teacherId,
    required String subject,
    required String grade,
    required String title,
    required int lessonType,
    required String date,
    required String from,
    required String to,
  }) = _UpcomingClassesModel;

  factory UpcomingClassesModel.fromJson(Map<String, dynamic> json) =>
      _$UpcomingClassesModelFromJson(json);
  UpcomingClasses toEntity() => UpcomingClasses(
        id: id,
        teacherId: teacherId,
        subject: subject,
        grade: grade,
        title: title,
        lessonType: lessonType,
        date: date,
        from: from,
        to: to,
      );
}


/*{
  "data": [
    {
      "id": "b638b7c3-6ac4-401f-83f4-6352ffc6faee",
      "teacherId": "string",
      "subject": "string",
      "grade": "string",
      "title": "string",
      "lessonType": 0,
      "date": "2025-01-30",
      "from": "13:00:00",
      "to": "14:00:00"
    }
  ],
}*/