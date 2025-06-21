import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/media/entities/uploaded_file.dart';
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

  UploadedFile toEntity() =>
      UploadedFile(id: id, fileName: fileName, storedFileName: storedFileName);
}
