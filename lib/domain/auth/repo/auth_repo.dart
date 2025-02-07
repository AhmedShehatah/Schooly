import '../../../core/result/result.dart';
import '../usecases/login_use_case/login_use_case.dart';

abstract class AuthRepo {
  Future<Result<void>> login({required LoginParams params});
}
