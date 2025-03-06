import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/result/result.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../repo/auth_repo.dart';
part 'reset_password_use_case.freezed.dart';
part 'reset_password_use_case.g.dart';

class ResetPasswordUseCase implements BaseUseCase<void, ResetPasswordParams> {
  final AuthRepo _authRepo;
  ResetPasswordUseCase(this._authRepo);
  @override
  Future<Result<void>> call({required ResetPasswordParams params}) {
    return _authRepo.resetPassword(params: params);
  }
}

@Freezed(fromJson: false, toJson: true)
class ResetPasswordParams with _$ResetPasswordParams {
  const factory ResetPasswordParams({
    required String email,
    required String newPassword,
  }) = _ResetPasswordParams;
}
