import 'package:freezed_annotation/freezed_annotation.dart';
part 'file_model.freezed.dart';
part 'file_model.g.dart';

@freezed
class FileModel with _$FileModel {
  const FileModel._();

  const factory FileModel({
    required int id,
    required String fileName,
    required String storedFileName,
    required String contentType,
  }) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
}

/**
 * 
 * 
 * 
 * {
    "id": 48,
    "fileName": "send.svg",
    "storedFileName": "erdpuqny.ntk",
    "contentType": "image/svg+xml"
  }
 */
