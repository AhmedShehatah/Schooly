import '../../../core/result/result.dart';
import '../entities/profile.dart';
import '../entities/update_profile.dart';

abstract class ProfileRepo {
  Future<Result<Profile>> getProfile();
  Future<Result<Profile>> updateProfile(UpdateProfile updateProfile);
}
