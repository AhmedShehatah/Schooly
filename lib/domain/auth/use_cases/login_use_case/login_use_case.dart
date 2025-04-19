import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/result/result.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../entities/auth.dart';
import '../../repo/auth_repo.dart';

part 'login_use_case.freezed.dart';
part 'login_use_case.g.dart';

class LoginUseCase implements BaseUseCase<Auth, LoginParams> {
  final AuthRepo _authRepo;
  LoginUseCase(this._authRepo);
  @override
  Future<Result<Auth>> call({required LoginParams params}) {
    return _authRepo.login(params: params);
  }
}

@Freezed(fromJson: false, toJson: true)
class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String email,
    required String password,
  }) = _LoginParams;
}
