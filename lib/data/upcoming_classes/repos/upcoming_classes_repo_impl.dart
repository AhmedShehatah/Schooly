import 'package:fpdart/fpdart.dart';

import '../../../core/network/failure/failure.dart';
import '../../../core/result/result.dart';
import '../../../domain/upcoming_classes/entities/sessions/session.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';
import '../../../domain/upcoming_classes/repos/upcoming_classes_repo.dart';
import '../../../domain/upcoming_classes/use_cases/join_session_use_case/join_session_use_case.dart';
import '../../../domain/upcoming_classes/use_cases/upcoming_classes/upcoming_classes_use_case.dart';
import '../data_sources/upcoming_classes_remote_data_source.dart';

class UpcomingClassesRepoImpl implements UpcomingClassesRepo {
  final UpcomingClassesRemoteDataSource _dataSource;
  const UpcomingClassesRepoImpl(this._dataSource);
  @override
  Future<Result<List<UpcomingClasses>>> getUpcomingClasses(
      {required UpcomingClassesParams params}) async {
    try {
      final result = await _dataSource.getUpcomingClasses(params: params);
      return Right(result.map((e) => e.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<Session>> joinSession(
      {required JoinSessionParams params}) async {
    try {
      final result = await _dataSource.joinSession(params: params);
      return Right(result.toEntity());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
