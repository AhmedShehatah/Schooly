import 'package:freezed_annotation/freezed_annotation.dart';

part 'learn.freezed.dart';

@freezed
class Learn with _$Learn {
  factory Learn(
      {required String id,
      required String studentName,
      required String studentId,
      required int department,
      required int grade,
      required String parentName,
      required String parentPhone1,
      required String dateOfJoining}) = _Learn;
}
