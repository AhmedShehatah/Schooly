import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/homework/entities/submitted_homework.dart';
part 'submitted_homework_model.freezed.dart';
part 'submitted_homework_model.g.dart';

@freezed
class SubmittedHomeworkModel with _$SubmittedHomeworkModel {
  const SubmittedHomeworkModel._();

  const factory SubmittedHomeworkModel({
    required String studentId,
    required String studentName,
    required String fileUrl,
    required String fileName,
    required DateTime dateline,
    required DateTime submittedDate,
  }) = _SubmittedHomeworkModel;

  factory SubmittedHomeworkModel.fromJson(Map<String, dynamic> json) =>
      _$SubmittedHomeworkModelFromJson(json);
  SubmittedHomework toEntity() => SubmittedHomework(
        studentId: studentId,
        studentName: studentName,
        fileUrl: fileUrl,
        fileName: fileName,
        dateline: dateline,
        submittedDate: submittedDate,
      );
}
