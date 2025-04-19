import 'package:fpdart/fpdart.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/network/failure/failure.dart';
import '../../../core/result/result.dart';
import '../../../core/shared_preferences/prefs_keys.dart';
import '../../../core/shared_preferences/shared_prefs.dart';
import '../../../domain/auth/entities/auth.dart';
import '../../../domain/auth/repo/auth_repo.dart';
import '../../../domain/auth/use_cases/check_otp_use_case/check_otp_use_case.dart';
import '../../../domain/auth/use_cases/forget_password_use_case/forget_password_use_case.dart';
import '../../../domain/auth/use_cases/login_use_case/login_use_case.dart';
import '../../../domain/auth/use_cases/reset_password_use_case/reset_password_use_case.dart';
import '../remote/auth_remote_data_source.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource _authRemoteDataSource;
  const AuthRepoImpl(this._authRemoteDataSource);
  @override
  Future<Result<Auth>> login({required LoginParams params}) async {
    try {
      await _authRemoteDataSource.login(params: params);
      sl<SharedPrefs>().saveBool(key: PrefsKeys.isLogged, value: true);
      final result = await _authRemoteDataSource.login(params: params);
      return Right(result.toEntity());
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<void>> forgetPassword(
      {required ForgetPasswordParams params}) async {
    try {
      await _authRemoteDataSource.forgetPassword(params: params);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<void>> resetPassword(
      {required ResetPasswordParams params}) async {
    try {
      await _authRemoteDataSource.resetPassword(params: params);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Result<void>> verifyCode({required CheckOtpParams params}) async {
    try {
      await _authRemoteDataSource.verifyCode(params: params);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
