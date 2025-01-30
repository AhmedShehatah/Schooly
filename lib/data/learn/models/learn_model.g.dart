// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learn_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LearnModelImpl _$$LearnModelImplFromJson(Map<String, dynamic> json) =>
    _$LearnModelImpl(
      id: json['id'] as String,
      studentName: json['studentName'] as String,
      studentId: json['studentId'] as String,
      department: (json['department'] as num).toInt(),
      grade: (json['grade'] as num).toInt(),
      parentName: json['parentName'] as String,
      parentPhone1: json['parentPhone1'] as String,
      dateOfJoining: json['dateOfJoining'] as String,
    );

Map<String, dynamic> _$$LearnModelImplToJson(_$LearnModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentName': instance.studentName,
      'studentId': instance.studentId,
      'department': instance.department,
      'grade': instance.grade,
      'parentName': instance.parentName,
      'parentPhone1': instance.parentPhone1,
      'dateOfJoining': instance.dateOfJoining,
    };
