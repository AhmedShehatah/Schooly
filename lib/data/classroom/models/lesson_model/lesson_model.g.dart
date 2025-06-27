// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonModelImpl _$$LessonModelImplFromJson(Map<String, dynamic> json) =>
    _$LessonModelImpl(
      id: json['id'] as String,
      classRoomId: json['classRoomId'] as String,
      title: json['title'] as String,
      grade: json['grade'] as String,
      subject: json['subject'] as String,
    );

Map<String, dynamic> _$$LessonModelImplToJson(_$LessonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classRoomId': instance.classRoomId,
      'title': instance.title,
      'grade': instance.grade,
      'subject': instance.subject,
    };
