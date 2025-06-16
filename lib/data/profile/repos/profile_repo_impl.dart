import 'package:fpdart/fpdart.dart';

import '../../../core/network/failure/failure.dart';
import '../../../core/result/result.dart';
import '../../../domain/profile/entities/profile.dart';
import '../../../domain/profile/entities/update_profile.dart';
import '../../../domain/profile/repos/profile_repo.dart';
import '../data_sources/profile_remote_data_source.dart';
import '../models/update_profile_model.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ProfileRemoteDataSource _remoteDataSource;
  const ProfileRepoImpl(this._remoteDataSource);
  @override
  Future<Result<Profile>> getProfile() async {
    try {
      final result = await _remoteDataSource.getProfile();
      return Right(result.toEntity());
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<Profile>> updateProfile(UpdateProfile updateProfile) async {
    try {
      final model = UpdateProfileModel(
        name: updateProfile.name,
        email: updateProfile.email,
        profilePictureUrl: updateProfile.profilePictureUrl,
      );
      final result = await _remoteDataSource.updateProfile(model);
      return Right(result.toEntity());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
