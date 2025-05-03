import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework.freezed.dart';

@freezed
class Homework with _$Homework {
  const Homework._();
  const factory Homework({
    required String homeWorkId,
    required String fileUrl,
    required String fileName,
    required String lessonTitle,
  }) = _Homework;
}
