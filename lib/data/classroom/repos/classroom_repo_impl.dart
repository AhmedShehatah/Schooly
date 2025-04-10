import 'package:fpdart/fpdart.dart';

import '../../../core/network/failure/failure.dart';
import '../../../core/result/result.dart';
import '../../../domain/classroom/entities/classroom/classroom.dart';
import '../../../domain/classroom/entities/comment/comment.dart';
import '../../../domain/classroom/entities/post/post.dart';
import '../../../domain/classroom/repo/classroom_repo.dart';
import '../../../domain/classroom/use_case/add_comment_use_case/add_comment_use_case.dart';
import '../../../domain/classroom/use_case/add_post_use_case/add_post_use_case.dart';
import '../../../domain/classroom/use_case/get_comments_use_case/get_comment_use_case.dart';
import '../../../domain/classroom/use_case/get_posts_use_case/get_posts_use_case.dart';
import '../data_sources/classroom_remote_data_source.dart';

class ClassroomRepoImpl implements ClassroomRepo {
  ClassroomRepoImpl(this._rds);
  final ClassroomRemoteDataSource _rds;
  @override
  Future<Result<List<Post>>> getPosts({required GetPostParams params}) async {
    try {
      final result = await _rds.getPosts(params);
      return Right(result.map((e) => e.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<void>> addPost({required AddPostParams params}) async {
    try {
      await _rds.addPost(params);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<void>> addComment({required AddCommentParams params}) async {
    try {
      await _rds.addComment(params: params);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<void>> deleteComment({required String id}) async {
    try {
      await _rds.deleteComment(id: id);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<void>> deletePost({required String id}) async {
    try {
      await _rds.deletePost(id: id);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<List<Comment>>> getPostComments(
      {required GetCommentParams params}) async {
    try {
      final result = await _rds.getComments(params: params);
      return Right(result.map((e) => e.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<List<Classroom>>> getClassrooms() async {
    try {
      final result = await _rds.getClassrooms();
      return Right(result.map((e) => e.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
