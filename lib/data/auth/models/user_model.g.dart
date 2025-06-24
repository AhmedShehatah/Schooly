// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: $enumDecode(_$UserTypeEnumMap, json['role']),
      profilePictureUrl: json['profilePictureUrl'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': _$UserTypeEnumMap[instance.role]!,
      'profilePictureUrl': instance.profilePictureUrl,
    };

const _$UserTypeEnumMap = {
  UserType.student: 1,
  UserType.teacher: 2,
};
