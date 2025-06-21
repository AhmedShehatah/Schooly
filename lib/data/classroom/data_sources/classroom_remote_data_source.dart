import 'package:dio/dio.dart';
import '../../../core/network/failure/failure.dart';
import '../../../domain/classroom/use_case/add_comment_use_case/add_comment_use_case.dart';
import '../../../domain/classroom/use_case/add_new_session_use_case/add_new_session_use_case.dart';
import '../../../domain/classroom/use_case/add_post_use_case/add_post_use_case.dart';
import '../../../domain/classroom/use_case/get_comments_use_case/get_comment_use_case.dart';
import '../../../domain/lookups/use_cases/get_lessons_use_case/get_lessons_use_case.dart';
import '../../../domain/classroom/use_case/get_posts_use_case/get_posts_use_case.dart';
import '../../../domain/homework/use_cases/add_homework_use_case/add_homework_use_case.dart';
import '../models/classroom_model/classroom_model.dart';
import '../models/comment_model/comment_model.dart';
import '../models/lesson_model/lesson_model.dart';
import '../models/post_model/post_model.dart';

class ClassroomRemoteDataSourceImpl implements ClassroomRemoteDataSource {
  final Dio _dio;

  ClassroomRemoteDataSourceImpl(this._dio);

  @override
  Future<List<ClassroomModel>> getClassrooms() async {
    try {
      final result = await _dio.get('/user/classrooms');
      return (result.data as List)
          .map((e) => ClassroomModel.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<List<PostModel>> getPosts({required GetPostParams params}) async {
    try {
      final result =
          await _dio.get('/post/all', queryParameters: params.toJson());
      return (result.data as List).map((e) => PostModel.fromJson(e)).toList();
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<void> addPost({required AddPostParams params}) async {
    try {
      await _dio.post('/post', data: params.toJson());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<void> deletePost({required String id}) async {
    try {
      await _dio.delete('/posts/$id');
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<List<CommentModel>> getComments(
      {required GetCommentParams params}) async {
    try {
      final result = await _dio.post('/comment/post/${params.postId}',
          queryParameters: {'pageSize': params.pageSize, 'page': params.page});
      return (result.data as List)
          .map((e) => CommentModel.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<void> addComment({required AddCommentParams params}) async {
    try {
      await _dio.post('/comment', data: params.toJson());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<void> deleteComment({required String id}) async {
    try {
      await _dio.delete('/comment/$id');
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<void> addSession({required AddNewSessionParams params}) async {
    try {
      await _dio.post('/lesson', data: params.toJson());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<void> addHomework({required AddHomeworkParams params}) async {
    try {
      await _dio.post('/homework', data: params.toJson());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<List<LessonModel>> getLessons(
      {required GetLessonsParams params}) async {
    try {
      final result =
          await _dio.get('/lesson', queryParameters: params.toJson());
      return (result.data as List).map((e) => LessonModel.fromJson(e)).toList();
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}

abstract class ClassroomRemoteDataSource {
  Future<List<ClassroomModel>> getClassrooms();
  Future<List<PostModel>> getPosts({required GetPostParams params});
  Future<void> addPost({required AddPostParams params});
  Future<void> deletePost({required String id});
  Future<List<CommentModel>> getComments({required GetCommentParams params});
  Future<void> addComment({required AddCommentParams params});
  Future<void> deleteComment({required String id});
  Future<void> addSession({required AddNewSessionParams params});
  Future<void> addHomework({required AddHomeworkParams params});
  Future<List<LessonModel>> getLessons({required GetLessonsParams params});
}
