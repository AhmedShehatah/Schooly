import '../../../core/result/result.dart';
import '../entities/upcoming_classes.dart';
import '../usecases/upcoming_classes_use_case.dart';

abstract class UpcomingClassesRepo {
  Future<Result<List<UpcomingClasses>>> getUpcomingClasses({
    required UpcomingClassesParams params,
  });
}
