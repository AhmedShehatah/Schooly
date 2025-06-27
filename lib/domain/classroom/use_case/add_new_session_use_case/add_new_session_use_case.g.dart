// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_new_session_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$AddNewSessionParamsImplToJson(
        _$AddNewSessionParamsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'classRoomId': instance.classRoomId,
      'lessonType': _$LessonTypeEnumMap[instance.lessonType],
      'date': instance.date,
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
