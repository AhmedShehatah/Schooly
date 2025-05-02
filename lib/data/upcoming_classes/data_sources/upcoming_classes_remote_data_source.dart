import 'dart:isolate';

import 'package:dio/dio.dart';

import '../../../core/network/failure/failure.dart';
import '../../../domain/upcoming_classes/use_cases/join_session_use_case/join_session_use_case.dart';
import '../../../domain/upcoming_classes/use_cases/upcoming_classes/upcoming_classes_use_case.dart';
import '../models/session_model/session_model.dart';
import '../models/upcoming_class/upcoming_classes_model.dart';

class UpcomingClassesRemoteDataSourceImpl
    implements UpcomingClassesRemoteDataSource {
  final Dio _dio;
  const UpcomingClassesRemoteDataSourceImpl(this._dio);

  @override
  Future<List<UpcomingClassesModel>> getUpcomingClasses(
      {required UpcomingClassesParams params}) async {
    try {
      final response =
          await _dio.get('/lesson/upcoming', queryParameters: params.toJson());
      return Isolate.run<List<UpcomingClassesModel>>(() =>
          (response.data as List)
              .map((e) => UpcomingClassesModel.fromJson(e))
              .toList());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<SessionModel> joinSession({required JoinSessionParams params}) async {
    try {
      final response = await _dio.post('/lesson/join',
          queryParameters: {'id': params.id},
          data: FormData.fromMap({
            'image': await MultipartFile.fromFile(params.file.path,
                filename: params.file.path.split('/').last),
          }));
      return SessionModel.fromJson(response.data);
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}

abstract class UpcomingClassesRemoteDataSource {
  Future<List<UpcomingClassesModel>> getUpcomingClasses({
    required UpcomingClassesParams params,
  });

  Future<SessionModel> joinSession({required JoinSessionParams params});
}
