import 'dart:isolate';

import 'package:dio/dio.dart';

import '../../../core/network/failure/failure.dart';
import '../models/post_model/post_model.dart';

class ClassroomRemoteDataSource {
  const ClassroomRemoteDataSource(this._dio);

  final Dio _dio;

  Future<List<PostModel>> getPosts() async {
    try {
      final result = await _dio.get('/posts');
      return Isolate.run<List<PostModel>>(() {
        return (result.data as List).map((e) => PostModel.fromJson(e)).toList();
      });
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}
