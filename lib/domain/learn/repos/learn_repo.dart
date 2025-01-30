import '../../../core/result/result.dart';
import '../enities/learn.dart';
import '../uses_cases/learn_use_case.dart';

abstract class LearnRepo {
  Future<Result<List<Learn>>> getLearnList({required LearnParams params});
}
