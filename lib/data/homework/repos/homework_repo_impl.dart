import 'package:fpdart/fpdart.dart';

import '../../../core/network/failure/failure.dart';
import '../../../core/result/result.dart';
import '../../../domain/homework/entities/homework.dart';
import '../../../domain/homework/repos/homework_repo.dart';
import '../../../domain/homework/use_cases/homework_use_case.dart';
import '../data_sources/homework_remote_data_source.dart';

class HomeworkRepoImpl implements HomeworkRepo {
  final HomeworkRemoteDataSource _dataSource;
  HomeworkRepoImpl(this._dataSource);

  @override
  Future<Result<List<Homework>>> getHomeworkActive(
      {required HomeworkParams params}) async {
    try {
      final result = await _dataSource.getHomeworkActive(params: params);
      return Right(result.map((e) => e.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
