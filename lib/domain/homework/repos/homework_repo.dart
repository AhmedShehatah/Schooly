import '../../../core/result/result.dart';
import '../entities/homework.dart';
import '../use_cases/homework_use_case.dart';

abstract class HomeworkRepo {
  Future<Result<List<Homework>>> getHomeworkActive({
    required HomeworkParams params,
  });
}
