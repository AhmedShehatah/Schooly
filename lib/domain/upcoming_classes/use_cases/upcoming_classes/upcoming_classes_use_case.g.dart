// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_classes_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$UpcomingClassesParamsImplToJson(
        _$UpcomingClassesParamsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      if (instance.classRoomId case final value?) 'classRoomId': value,
      'Status': _$ClassTypeEnumMap[instance.status]!,
    };

const _$ClassTypeEnumMap = {
  ClassType.upcoming: 'Upcoming',
  ClassType.canceled: 'Canceled',
  ClassType.completed: 'Completed',
};
