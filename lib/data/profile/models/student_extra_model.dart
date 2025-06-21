import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_extra_model.freezed.dart';
part 'student_extra_model.g.dart';

@freezed
class StudentExtraModel with _$StudentExtraModel {
  const factory StudentExtraModel({
    String? parent,
    required String address,
    required DateTime dateOfJoining,
    required int department,
    required int grade,
  }) = _StudentExtraModel;

  factory StudentExtraModel.fromJson(Map<String, dynamic> json) =>
      _$StudentExtraModelFromJson(json);
}
