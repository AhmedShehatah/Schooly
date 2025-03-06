import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/result/result.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../repo/auth_repo.dart';
part 'check_otp_use_case.freezed.dart';
part 'check_otp_use_case.g.dart';

class CheckOtpUseCase implements BaseUseCase<void, CheckOtpParams> {
  final AuthRepo _repo;
  CheckOtpUseCase(this._repo);
  @override
  Future<Result<void>> call({required CheckOtpParams params}) {
    return _repo.verifyCode(params: params);
  }
}

@Freezed(fromJson: false, toJson: true)
class CheckOtpParams with _$CheckOtpParams {
  const CheckOtpParams._();
  const factory CheckOtpParams({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password_code') required String passwordCode,
  }) = _CheckOtpParams;
}
