import '../../../core/result/result.dart';
import '../use_cases/login_use_case/login_use_case.dart';

abstract class AuthRepo {
  Future<Result<void>> login({required LoginParams params});
}
