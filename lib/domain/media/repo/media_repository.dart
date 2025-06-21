import 'dart:typed_data';

import '../entities/uploaded_file.dart';
import '../use_cases/download_file_use_case.dart';
import '../../../core/result/result.dart';
import '../use_cases/upload_file_use_case.dart';

abstract class MediaRepository {
  Future<Result<UploadedFile>> uploadFile({required UploadParams params});
  Future<Result<Uint8List>> downloadFile({required DownloadParams params});
}
