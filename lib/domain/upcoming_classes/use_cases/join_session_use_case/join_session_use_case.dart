import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/result/result.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../entities/sessions/session.dart';
import '../../repos/upcoming_classes_repo.dart';

part 'join_session_use_case.freezed.dart';

class JoinSessionUseCase implements BaseUseCase<Session, JoinSessionParams> {
  final UpcomingClassesRepo _upcomingClassesRepo;
  const JoinSessionUseCase(this._upcomingClassesRepo);
  @override
  Future<Result<Session>> call({required JoinSessionParams params}) {
    return _upcomingClassesRepo.joinSession(params: params);
  }
}

@Freezed(toJson: false, fromJson: false)
class JoinSessionParams with _$JoinSessionParams {
  const JoinSessionParams._();
  const factory JoinSessionParams({
    required String id,
    required File file,
  }) = _JoinSessionParams;
}
