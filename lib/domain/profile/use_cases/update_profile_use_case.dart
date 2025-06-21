import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/result/result.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../entities/update_profile.dart';
import '../repos/profile_repo.dart';
part 'update_profile_use_case.freezed.dart';
part 'update_profile_use_case.g.dart';

class UpdateProfileUseCase
    implements BaseUseCase<UpdateProfile, UpdateProfileParams> {
  final ProfileRepo _repo;
  const UpdateProfileUseCase(this._repo);

  @override
  Future<Result<UpdateProfile>> call({required UpdateProfileParams params}) {
    return _repo.updateProfile(params: params);
  }
}

@Freezed(fromJson: false, toJson: true)
class UpdateProfileParams with _$UpdateProfileParams {
  const UpdateProfileParams._();
  const factory UpdateProfileParams({
    required String name,
    required String email,
    String? profilePictureUrl,
  }) = _UpdateProfileParams;
}
