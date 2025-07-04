import 'dart:isolate';

import 'package:dio/dio.dart';

import '../../../core/network/failure/failure.dart';
import '../../../domain/homework/use_cases/get_submitted_homework_use_case.dart';
import '../../../domain/homework/use_cases/homework_use_case.dart';
import '../../../domain/homework/use_cases/submit_homework_use_case.dart';
import '../models/homework_model.dart';
import '../models/submitted_homework_model.dart';

class HomeworkRemoteDataSourceImpl implements HomeworkRemoteDataSource {
  final Dio _dio;
  const HomeworkRemoteDataSourceImpl(this._dio);

  @override
  Future<List<HomeworkModel>> getHomeworkActive({
    required HomeworkParams params,
  }) async {
    try {
      final response =
          await _dio.get('/homework/all', queryParameters: params.toJson());
      return Isolate.run<List<HomeworkModel>>(() => (response.data as List)
          .map((e) => HomeworkModel.fromJson(e))
          .toList());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<String> submitHomework({required SubmitHomeworkParams params}) async {
    try {
      final response = await _dio.post('/homework/${params.homeWorkId}/submit',
          data: params.toJson());
      return Isolate.run<String>(() => response.data);
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<List<SubmittedHomeworkModel>> getSubmittedHomework(
      {required SubmittedHomeworkParams params}) async {
    try {
      final response =
          await _dio.get<List>('/homework/${params.homeWorkId}/students');
      return Isolate.run<List<SubmittedHomeworkModel>>(() => response.data!
          .map((item) => SubmittedHomeworkModel.fromJson(item))
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
  Future<String> submitHomework({required SubmitHomeworkParams params});
  Future<List<SubmittedHomeworkModel>> getSubmittedHomework(
      {required SubmittedHomeworkParams params});
}
