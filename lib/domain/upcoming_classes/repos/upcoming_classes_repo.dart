import '../../../core/result/result.dart';
import '../entities/sessions/session.dart';
import '../entities/upcoming_classes/upcoming_classes.dart';
import '../use_cases/join_session_use_case/join_session_use_case.dart';
import '../use_cases/upcoming_classes/upcoming_classes_use_case.dart';

abstract class UpcomingClassesRepo {
  Future<Result<List<UpcomingClasses>>> getUpcomingClasses({
    required UpcomingClassesParams params,
  });
  Future<Result<Session>> joinSession({required JoinSessionParams params});
}
