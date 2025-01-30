import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/learn/enities/learn.dart';

part 'learn_model.freezed.dart';
part 'learn_model.g.dart';

@freezed
class LearnModel with _$LearnModel {
  const LearnModel._();
  factory LearnModel(
      {required String id,
      required String studentName,
      required String studentId,
      required int department,
      required int grade,
      required String parentName,
      required String parentPhone1,
      required String dateOfJoining}) = _LearnModel;

  factory LearnModel.fromJson(Map<String, dynamic> json) =>
      _$LearnModelFromJson(json);

  Learn toEntity() => Learn(
      id: id,
      studentName: studentName,
      studentId: studentId,
      department: department,
      grade: grade,
      parentName: parentName,
      parentPhone1: parentPhone1,
      dateOfJoining: dateOfJoining);
}
