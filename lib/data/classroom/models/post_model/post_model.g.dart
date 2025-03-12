// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
      id: (json['id'] as num).toInt(),
      comments: json['comments'] as List<dynamic>,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'comments': instance.comments,
    };
