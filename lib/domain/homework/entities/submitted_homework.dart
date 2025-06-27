import 'package:freezed_annotation/freezed_annotation.dart';
part 'submitted_homework.freezed.dart';

@freezed
class SubmittedHomework with _$SubmittedHomework {
  const SubmittedHomework._();

  const factory SubmittedHomework({
    required String studentId,
    required String studentName,
    required String fileUrl,
    required String fileName,
    required DateTime dateline,
    required DateTime submittedDate,
  }) = _SubmittedHomework;
}
