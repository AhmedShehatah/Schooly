import 'package:fpdart/fpdart.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/network/failure/failure.dart';
import '../../../core/result/result.dart';
import '../../../core/shared_preferences/prefs_keys.dart';
import '../../../core/shared_preferences/shared_prefs.dart';
import '../../../domain/auth/repo/auth_repo.dart';
import '../../../domain/auth/use_cases/login_use_case/login_use_case.dart';
import '../remote/auth_remote_data_source.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource _authRemoteDataSource;
  const AuthRepoImpl(this._authRemoteDataSource);
  @override
  Future<Result<void>> login({required LoginParams params}) async {
    try {
      await _authRemoteDataSource.login(params: params);
      sl<SharedPrefs>().saveBool(key: PrefsKeys.isLogged, value: true);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
