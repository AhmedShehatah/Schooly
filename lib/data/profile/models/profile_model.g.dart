// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      profilePictureUrl: json['profilePictureUrl'] as String?,
      role: $enumDecode(_$UserTypeEnumMap, json['role']),
      studentExtra: json['studentExtra'] == null
          ? null
          : StudentExtraModel.fromJson(
              json['studentExtra'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender]!,
      'profilePictureUrl': instance.profilePictureUrl,
      'role': _$UserTypeEnumMap[instance.role]!,
      'studentExtra': instance.studentExtra?.toJson(),
    };

const _$GenderEnumMap = {
  Gender.male: 0,
  Gender.female: 1,
};

const _$UserTypeEnumMap = {
  UserType.student: 1,
  UserType.teacher: 2,
};
