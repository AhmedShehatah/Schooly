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
  }) = _HomeworkModel;
  factory HomeworkModel.fromJson(Map<String, dynamic> json) =>
      _$HomeworkModelFromJson(json);
  Homework toEntity() => Homework(
        homeWorkId: homeWorkId,
        fileUrl: fileUrl,
        fileName: fileName,
        lessonTitle: lessonTitle,
      );
}
/**
 *  {
      "homeWorkId": "b467632f-8e84-437d-c4de-08dd791437ae",
      "fileUrl": "1nfyphs5.cyh",
      "fileName": "DEPI_Certificate.pdf",
      "lessonTitle": "مصر"
    },
 */