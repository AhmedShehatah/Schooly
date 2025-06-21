// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submitted_homework_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubmittedHomeworkModelImpl _$$SubmittedHomeworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmittedHomeworkModelImpl(
      studentId: json['studentId'] as String,
      studentName: json['studentName'] as String,
      fileUrl: json['fileUrl'] as String,
      fileName: json['fileName'] as String,
      dateline: DateTime.parse(json['dateline'] as String),
      submittedDate: DateTime.parse(json['submittedDate'] as String),
    );

Map<String, dynamic> _$$SubmittedHomeworkModelImplToJson(
        _$SubmittedHomeworkModelImpl instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'studentName': instance.studentName,
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'dateline': instance.dateline.toIso8601String(),
      'submittedDate': instance.submittedDate.toIso8601String(),
    };
