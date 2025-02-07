import '../result/result.dart';

abstract class BaseUseCase<R, P> {
  Future<Result<R>> call({required P params});
}

abstract class BaseUseCaseNoParams<R> {
  Future<Result<R>> call();
}
