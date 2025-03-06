import '../../../core/result/result.dart';
import '../use_cases/check_otp_use_case/check_otp_use_case.dart';
import '../use_cases/forget_password_use_case/forget_password_use_case.dart';
import '../use_cases/login_use_case/login_use_case.dart';
import '../use_cases/reset_password_use_case/reset_password_use_case.dart';

abstract class AuthRepo {
  Future<Result<void>> login({required LoginParams params});
  Future<Result<void>> verifyCode({required CheckOtpParams params});
  Future<Result<void>> forgetPassword({required ForgetPasswordParams params});
  Future<Result<void>> resetPassword({required ResetPasswordParams params});
}
