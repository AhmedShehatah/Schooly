import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_extra.freezed.dart';

@freezed
class StudentExtra with _$StudentExtra {
  const factory StudentExtra({
    String? parent,
    required String address,
    required DateTime dateOfJoining,
    required int department,
    required int grade,
  }) = _StudentExtra;
}
