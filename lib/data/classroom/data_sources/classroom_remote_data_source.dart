import 'dart:isolate';

import 'package:dio/dio.dart';

import '../../../core/network/failure/failure.dart';
import '../../../domain/classroom/use_case/add_comment_use_case/add_comment_use_case.dart';
import '../../../domain/classroom/use_case/add_post_use_case/add_post_use_case.dart';
import '../../../domain/classroom/use_case/get_comments_use_case/get_comment_use_case.dart';
import '../../../domain/classroom/use_case/get_posts_use_case/get_posts_use_case.dart';
import '../models/classroom_model/classroom_model.dart';
import '../models/comment_model/comment_model.dart';
import '../models/post_model/post_model.dart';

class ClassroomRemoteDataSource {
  const ClassroomRemoteDataSource(this._dio);

  final Dio _dio;

  //----------------------------------- Classrooms -----------------------------------
  //getClassrooms

  Future<List<ClassroomModel>> getClassrooms() async {
    try {
      final result = await _dio.get('/user/classrooms');
      return Isolate.run<List<ClassroomModel>>(() {
        return (result.data as List)
            .map((e) => ClassroomModel.fromJson(e))
            .toList();
      });
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  //----------------------------------- Post -----------------------------------
  Future<List<PostModel>> getPosts(GetPostParams params) async {
    try {
      final result =
          await _dio.get('/post/all', queryParameters: params.toJson());
      return Isolate.run<List<PostModel>>(() {
        return (result.data as List).map((e) => PostModel.fromJson(e)).toList();
      });
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  Future<void> addPost(AddPostParams params) async {
    try {
      await _dio.post('/post', data: params.toJson());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  Future<void> deletePost({required String id}) async {
    try {
      await _dio.delete('/posts/$id');
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  //----------------------------------- Comment -----------------------------------
  Future<List<CommentModel>> getComments(
      {required GetCommentParams params}) async {
    try {
      final result = await _dio.post('/comment/post/${params.postId}',
          queryParameters: {'pageSize:': params.pageSize, 'page': params.page});
      return Isolate.run<List<CommentModel>>(() {
        return (result.data as List)
            .map((e) => CommentModel.fromJson(e))
            .toList();
      });
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  Future<void> addComment({required AddCommentParams params}) async {
    try {
      await _dio.post('/comment', data: params.toJson());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  Future<void> deleteComment({required String id}) async {
    try {
      await _dio.delete('/comment/$id');
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}
