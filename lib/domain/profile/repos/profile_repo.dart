import '../../../core/result/result.dart';
import '../entities/profile.dart';
import '../entities/update_profile.dart';
import '../use_cases/update_profile_use_case.dart';

abstract class ProfileRepo {
  Future<Result<Profile>> getProfile();
  Future<Result<UpdateProfile>> updateProfile(
      {required UpdateProfileParams params});
}
