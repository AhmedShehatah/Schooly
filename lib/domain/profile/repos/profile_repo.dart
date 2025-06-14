import '../../../core/result/result.dart';
import '../entities/profile.dart';

abstract class ProfileRepo {
  Future<Result<Profile>> getProfile();
}
