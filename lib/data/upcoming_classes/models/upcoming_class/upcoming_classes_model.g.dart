// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_classes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpcomingClassesModelImpl _$$UpcomingClassesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpcomingClassesModelImpl(
      id: json['id'] as String,
      teacherId: json['teacherId'] as String,
      subject: json['subject'] as String,
      grade: json['grade'] as String,
      title: json['title'] as String,
      lessonType: $enumDecode(_$LessonTypeEnumMap, json['lessonType']),
      date: DateTime.parse(json['date'] as String),
      from: json['from'] as String,
      to: json['to'] as String,
    );

Map<String, dynamic> _$$UpcomingClassesModelImplToJson(
        _$UpcomingClassesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teacherId': instance.teacherId,
      'subject': instance.subject,
      'grade': instance.grade,
      'title': instance.title,
      'lessonType': _$LessonTypeEnumMap[instance.lessonType]!,
      'date': instance.date.toIso8601String(),
      'from': instance.from,
      'to': instance.to,
    };

const _$LessonTypeEnumMap = {
  LessonType.explain: 0,
  LessonType.homeworkSolution: 1,
  LessonType.practice: 2,
  LessonType.revision: 3,
  LessonType.other: 4,
};
