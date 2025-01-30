import '../../result/result.dart';

abstract class BaseUseCase<T, P> {
  Future<Result<T>> call({required P params});
}

abstract class BaseUseCaseNoParams<T> {
  Future<Result<T>> call();
}
