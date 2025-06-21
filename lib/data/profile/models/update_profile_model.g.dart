// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfileModelImpl _$$UpdateProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProfileModelImpl(
      profilePictureUrl: json['profilePictureUrl'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$UpdateProfileModelImplToJson(
        _$UpdateProfileModelImpl instance) =>
    <String, dynamic>{
      'profilePictureUrl': instance.profilePictureUrl,
      'name': instance.name,
      'email': instance.email,
    };
