// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileModelImpl _$$FileModelImplFromJson(Map<String, dynamic> json) =>
    _$FileModelImpl(
      id: (json['id'] as num).toInt(),
      fileName: json['fileName'] as String,
      storedFileName: json['storedFileName'] as String,
      contentType: json['contentType'] as String,
    );

Map<String, dynamic> _$$FileModelImplToJson(_$FileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'storedFileName': instance.storedFileName,
      'contentType': instance.contentType,
    };
