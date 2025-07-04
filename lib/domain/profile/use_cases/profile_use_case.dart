import '../../../core/result/result.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../entities/profile.dart';
import '../repos/profile_repo.dart';

class ProfileUseCase implements BaseUseCaseNoParams<Profile> {
  final ProfileRepo _repo;
  const ProfileUseCase(this._repo);

  @override
  Future<Result<Profile>> call() {
    return _repo.getProfile();
  }
}
