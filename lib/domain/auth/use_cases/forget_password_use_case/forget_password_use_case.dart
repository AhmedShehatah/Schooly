import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/result/result.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../repo/auth_repo.dart';
part 'forget_password_use_case.freezed.dart';
part 'forget_password_use_case.g.dart';

class ForgetPasswordUseCase implements BaseUseCase<void, ForgetPasswordParams> {
  final AuthRepo _authRepo;
  ForgetPasswordUseCase(this._authRepo);
  @override
  Future<Result<void>> call({required ForgetPasswordParams params}) {
    return _authRepo.forgetPassword(params: params);
  }
}

@Freezed(fromJson: false, toJson: true)
class ForgetPasswordParams with _$ForgetPasswordParams {
  const factory ForgetPasswordParams({required String email}) =
      _ForgetPasswordParams;
}
