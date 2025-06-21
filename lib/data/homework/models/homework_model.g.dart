// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeworkModelImpl _$$HomeworkModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeworkModelImpl(
      homeWorkId: json['homeWorkId'] as String,
      fileUrl: json['fileUrl'] as String,
      fileName: json['fileName'] as String,
      lessonTitle: json['lessonTitle'] as String,
      isSubmitted: json['isSubmitted'] as bool? ?? false,
      totalSubmissions: (json['totalSubmissions'] as num?)?.toInt() ?? 0,
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$HomeworkModelImplToJson(_$HomeworkModelImpl instance) =>
    <String, dynamic>{
      'homeWorkId': instance.homeWorkId,
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'lessonTitle': instance.lessonTitle,
      'isSubmitted': instance.isSubmitted,
      'totalSubmissions': instance.totalSubmissions,
      'deadline': instance.deadline.toIso8601String(),
    };
