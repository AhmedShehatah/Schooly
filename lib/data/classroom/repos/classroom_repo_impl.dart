import 'package:fpdart/fpdart.dart';

import '../../../core/network/failure/failure.dart';
import '../../../core/result/result.dart';
import '../../../domain/classroom/entities/post/post.dart';
import '../../../domain/classroom/repo/classroom_repo.dart';
import '../data_sources/classroom_remote_data_source.dart';

class ClassroomRepoImpl implements ClassroomRepo {
  ClassroomRepoImpl(this._rds);
  final ClassroomRemoteDataSource _rds;
  @override
  Future<Result<List<Post>>> getPosts() async {
    try {
      final result = await _rds.getPosts();
      return Right(result.map((e) => e.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
