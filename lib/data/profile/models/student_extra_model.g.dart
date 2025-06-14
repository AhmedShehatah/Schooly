// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_extra_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentExtraModelImpl _$$StudentExtraModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentExtraModelImpl(
      parent: json['parent'] as String?,
      address: json['address'] as String,
      dateOfJoining: DateTime.parse(json['dateOfJoining'] as String),
      department: (json['department'] as num).toInt(),
      grade: (json['grade'] as num).toInt(),
    );

Map<String, dynamic> _$$StudentExtraModelImplToJson(
        _$StudentExtraModelImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'address': instance.address,
      'dateOfJoining': instance.dateOfJoining.toIso8601String(),
      'department': instance.department,
      'grade': instance.grade,
    };
