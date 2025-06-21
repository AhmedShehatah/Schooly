import 'package:freezed_annotation/freezed_annotation.dart';
part 'uploaded_file.freezed.dart';

@freezed
class UploadedFile with _$UploadedFile {
  const UploadedFile._();
  factory UploadedFile({
    required int id,
    required String fileName,
    required String storedFileName,
  }) = _UploadedFile;
}
