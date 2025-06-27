import '../../../core/result/result.dart';
import '../entities/homework.dart';
import '../entities/submitted_homework.dart';
import '../use_cases/get_submitted_homework_use_case.dart';
import '../use_cases/homework_use_case.dart';
import '../use_cases/submit_homework_use_case.dart';

abstract class HomeworkRepo {
  Future<Result<List<Homework>>> getHomeworkActive({
    required HomeworkParams params,
  });
  Future<Result<String>> submitHomework({
    required SubmitHomeworkParams params,
  });
  Future<Result<List<SubmittedHomework>>> getSubmittedHomework(
      {required SubmittedHomeworkParams params});
}
