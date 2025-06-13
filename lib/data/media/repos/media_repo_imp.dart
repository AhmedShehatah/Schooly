import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/network/failure/failure.dart';
import '../../../core/result/result.dart';
import '../../../domain/media/repo/media_repository.dart';
import '../../../domain/media/use_cases/download_file_use_case.dart';
import '../../../domain/media/use_cases/upload_file_use_case.dart';
import '../data_source/media_remote_data_source.dart';
import '../models/file_model.dart';

class MediaRepositoryImpl implements MediaRepository {
  final MediaRemoteDataSource _remoteDataSource;
  const MediaRepositoryImpl(
      {required MediaRemoteDataSource mediaRemoteDataSource})
      : _remoteDataSource = mediaRemoteDataSource;

  @override
  Future<Result<FileModel>> uploadFile({required UploadParams params}) async {
    try {
      final result = await _remoteDataSource.uploadFile(params: params);
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<Uint8List>> downloadFile(
      {required DownloadParams params}) async {
    try {
      final result = await _remoteDataSource.downloadFile(params: params);
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
