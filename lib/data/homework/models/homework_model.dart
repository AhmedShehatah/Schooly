import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/homework/entities/homework.dart';
part 'homework_model.freezed.dart';
part 'homework_model.g.dart';

@freezed
class HomeworkModel with _$HomeworkModel {
  const HomeworkModel._();
  const factory HomeworkModel({
    required String homeWorkId,
    required String fileUrl,
    required String fileName,
    required String lessonTitle,
    @Default(false) bool isSubmitted,
    @Default(0) int totalSubmissions,
    required DateTime deadline,
    required String subjectName,
  }) = _HomeworkModel;
  factory HomeworkModel.fromJson(Map<String, dynamic> json) =>
      _$HomeworkModelFromJson(json);
  Homework toEntity() => Homework(
        homeWorkId: homeWorkId,
        fileUrl: fileUrl,
        fileName: fileName,
        lessonTitle: lessonTitle,
        isSubmitted: isSubmitted,
        totalSubmissions: totalSubmissions,
        deadline: deadline,
        subjectName: subjectName,
      );
}
