import '../../../../core/result/result.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../entities/sessions/session.dart';
import '../../repos/upcoming_classes_repo.dart';

class JoinSessionUseCase implements BaseUseCase<Session, String> {
  final UpcomingClassesRepo _upcomingClassesRepo;
  const JoinSessionUseCase(this._upcomingClassesRepo);
  @override
  Future<Result<Session>> call({required String params}) {
    return _upcomingClassesRepo.joinSession(id: params);
  }
}
