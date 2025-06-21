import 'dart:io';

import '../../../../core/result/result.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../entities/user.dart';
import '../../repo/auth_repo.dart';

class LoginWithFaceIdUseCase implements BaseUseCase<User, File> {
  final AuthRepo _authRepo;
  const LoginWithFaceIdUseCase(this._authRepo);
  @override
  Future<Result<User>> call({required File params}) {
    return _authRepo.loginWithFaceId(params: params);
  }
}
