import 'package:fpdart/fpdart.dart';

import '../../../core/network/failure/failure.dart';
import '../../../core/result/result.dart';
import '../../../domain/learn/enities/learn.dart';
import '../../../domain/learn/repos/learn_repo.dart';
import '../../../domain/learn/uses_cases/learn_use_case.dart';
import '../data_sources/learn_remote_data_source.dart';

class LearnRepoImpl implements LearnRepo {
  final LearnRemoteDataSource _dataSource;
  const LearnRepoImpl(this._dataSource);
  @override
  Future<Result<List<Learn>>> getLearnList(
      {required LearnParams params}) async {
    try {
      final result = await _dataSource.getLearnList(params: params);
      return Right(result.map((e) => e.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
