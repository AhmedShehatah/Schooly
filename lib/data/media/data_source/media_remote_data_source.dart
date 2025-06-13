import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../domain/media/use_cases/download_file_use_case.dart';
import '../../../core/network/failure/failure.dart';
import '../../../domain/media/use_cases/upload_file_use_case.dart';
import '../models/file_model.dart';

class MediaRemoteDataSourceImpl implements MediaRemoteDataSource {
  final Dio _dio;

  MediaRemoteDataSourceImpl(
    this._dio,
  );
  @override
  Future<FileModel> uploadFile({required UploadParams params}) async {
    try {
      final result = await _dio.post(
        '/upload',
        data: FormData.fromMap(
          {
            'file': await MultipartFile.fromFile(
              params.path,
              filename: params.path.split('/').last,
            ),
          },
        ),
        onSendProgress: params.onProgress,
        cancelToken: params.cancelToken,
      );
      return FileModel.fromJson(result.data);
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<Uint8List> downloadFile({required DownloadParams params}) async {
    final Dio dio = Dio()..options.baseUrl = dotenv.get('BASE_URL');

    try {
      final response = await dio.get(
        '/upload/${params.url}',
        onReceiveProgress: params.onProgress,
        options: Options(
          headers: {
            HttpHeaders.acceptEncodingHeader: 'gzip, deflate, br',
          },
          followRedirects: false,
          responseType: ResponseType.bytes,
        ),
      );

      return response.data;
    } on DioException catch (e) {
      throw Failure.unknown(message: e.message ?? 'Something went wrong');
    }
  }
}

abstract class MediaRemoteDataSource {
  Future<Uint8List> downloadFile({required DownloadParams params});
  Future<FileModel> uploadFile({required UploadParams params});
}
