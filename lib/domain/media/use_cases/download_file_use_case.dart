import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/use_cases/base_use_case.dart';
import '../repo/media_repository.dart';
import '../../../core/result/result.dart';

part 'download_file_use_case.freezed.dart';

class DownloadFileUseCase implements BaseUseCase<Uint8List, DownloadParams> {
  final MediaRepository _media;
  DownloadFileUseCase({required MediaRepository mediaRepository})
      : _media = mediaRepository;

  @override
  Future<Result<Uint8List>> call({required DownloadParams params}) {
    return _media.downloadFile(params: params);
  }
}

@freezed
class DownloadParams with _$DownloadParams {
  const DownloadParams._();

  const factory DownloadParams(
      {required String url,
      required String fileName,
      @Default(false) bool isClosable,
      ProgressCallback? onProgress}) = _DownloadParams;
}
