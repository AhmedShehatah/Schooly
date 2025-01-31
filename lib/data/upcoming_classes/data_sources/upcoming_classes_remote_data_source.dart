import 'dart:isolate';

import 'package:dio/dio.dart';

import '../../../core/network/failure/failure.dart';
import '../../../domain/upcoming_classes/usecases/upcoming_classes_use_case.dart';
import '../models/upcoming_classes_model.dart';

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
}

abstract class UpcomingClassesRemoteDataSource {
  Future<List<UpcomingClassesModel>> getUpcomingClasses({
    required UpcomingClassesParams params,
  });
}
