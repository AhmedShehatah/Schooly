import 'dart:isolate';

import 'package:dio/dio.dart';

import '../../../core/network/failure/failure.dart';
import '../../../domain/learn/uses_cases/learn_use_case.dart';
import '../models/learn_model.dart';

class LearnRemoteDataSourceImpl implements LearnRemoteDataSource {
  final Dio _dio;
  const LearnRemoteDataSourceImpl(this._dio);

  @override
  Future<List<LearnModel>> getLearnList({required LearnParams params}) async {
    try {
      final response = await _dio.get<List>('/student/all',
          queryParameters: params.toJson());

      return Isolate.run<List<LearnModel>>(
          () => response.data!.map((e) => LearnModel.fromJson(e)).toList());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}

abstract class LearnRemoteDataSource {
  Future<List<LearnModel>> getLearnList({required LearnParams params});
}
