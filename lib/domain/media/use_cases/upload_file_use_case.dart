import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../core/result/result.dart';
import '../entities/uploaded_file.dart';
import '../repo/media_repository.dart';
part 'upload_file_use_case.freezed.dart';

class UploadUseCase implements BaseUseCase<UploadedFile, UploadParams> {
  final MediaRepository _mediaRepository;
  UploadUseCase({required MediaRepository mediaRepository})
      : _mediaRepository = mediaRepository;
  @override
  Future<Result<UploadedFile>> call({required UploadParams params}) {
    return _mediaRepository.uploadFile(params: params);
  }
}

@freezed
class UploadParams with _$UploadParams {
  const UploadParams._();
  const factory UploadParams({
    required String path,
    ProgressCallback? onProgress,
    CancelToken? cancelToken,
  }) = _UploadParams;
}
