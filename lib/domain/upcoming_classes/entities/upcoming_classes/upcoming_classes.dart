import 'package:freezed_annotation/freezed_annotation.dart';
part 'upcoming_classes.freezed.dart';

@freezed
class UpcomingClasses with _$UpcomingClasses {
  const UpcomingClasses._();
  const factory UpcomingClasses({
    required String id,
    required String teacherId,
    required String subject,
    required String grade,
    required String title,
    required int lessonType,
    required String date,
    required String from,
    required String to,
  }) = _UpcomingClasses;
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