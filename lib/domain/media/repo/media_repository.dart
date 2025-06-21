import 'dart:typed_data';

import '../../../data/media/models/file_model.dart';
import '../use_cases/download_file_use_case.dart';
import '../../../core/result/result.dart';
import '../use_cases/upload_file_use_case.dart';

abstract class MediaRepository {
  Future<Result<FileModel>> uploadFile({required UploadParams params});
  Future<Result<Uint8List>> downloadFile({required DownloadParams params});
}
