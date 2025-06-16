import '../../../core/result/result.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../entities/profile.dart';
import '../entities/update_profile.dart';
import '../repos/profile_repo.dart';

class UpdateProfileUseCase implements BaseUseCase<Profile, UpdateProfile> {
  final ProfileRepo _repo;
  const UpdateProfileUseCase(this._repo);
  @override
  Future<Result<Profile>> call({required UpdateProfile params}) {
    return _repo.updateProfile(params);
  }
}
