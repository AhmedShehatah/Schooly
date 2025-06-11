import 'dart:isolate';

import 'package:dio/dio.dart';

import '../../../core/network/failure/failure.dart';
import '../../../domain/homework/use_cases/homework_use_case.dart';
import '../models/homework_model.dart';

class HomeworkRemoteDataSourceImpl implements HomeworkRemoteDataSource {
  final Dio _dio;
  const HomeworkRemoteDataSourceImpl(this._dio);

  @override
  Future<List<HomeworkModel>> getHomeworkActive({
    required HomeworkParams params,
  }) async {
    try {
      final response =
          await _dio.get('/homework/active', queryParameters: params.toJson());
      return Isolate.run<List<HomeworkModel>>(() => (response.data as List)
          .map((e) => HomeworkModel.fromJson(e))
          .toList());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}

abstract class HomeworkRemoteDataSource {
  Future<List<HomeworkModel>> getHomeworkActive({
    required HomeworkParams params,
  });
}
