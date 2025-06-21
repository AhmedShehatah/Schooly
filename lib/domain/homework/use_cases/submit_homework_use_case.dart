import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/use_cases/base_use_case.dart';
import '../../../core/result/result.dart';
import '../repos/homework_repo.dart';
part 'submit_homework_use_case.freezed.dart';
part 'submit_homework_use_case.g.dart';

class SubmitHomeworkUseCase extends BaseUseCase<String, SubmitHomeworkParams> {
  final HomeworkRepo _repo;
  SubmitHomeworkUseCase(this._repo);
  @override
  Future<Result<String>> call({required SubmitHomeworkParams params}) async {
    return await _repo.submitHomework(params: params);
  }
}

@Freezed(toJson: true, fromJson: false)
class SubmitHomeworkParams with _$SubmitHomeworkParams {
  factory SubmitHomeworkParams({
    required String homeWorkId,
    required String fileUrl,
  }) = _SubmitHomeworkParams;
}
