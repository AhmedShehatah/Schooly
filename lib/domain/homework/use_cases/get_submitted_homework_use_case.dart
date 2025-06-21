import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/use_cases/base_use_case.dart';
import '../../../core/result/result.dart';
import '../entities/submitted_homework.dart';
import '../repos/homework_repo.dart';
part 'get_submitted_homework_use_case.freezed.dart';
part 'get_submitted_homework_use_case.g.dart';

class GetSubmittedHomeworkUseCase
    extends BaseUseCase<List<SubmittedHomework>, SubmittedHomeworkParams> {
  GetSubmittedHomeworkUseCase(this._repo);

  final HomeworkRepo _repo;
  @override
  Future<Result<List<SubmittedHomework>>> call(
      {required SubmittedHomeworkParams params}) {
    return _repo.getSubmittedHomework(params: params);
  }
}

@Freezed(fromJson: false, toJson: true)
class SubmittedHomeworkParams with _$SubmittedHomeworkParams {
  const SubmittedHomeworkParams._();
  const factory SubmittedHomeworkParams({
    @JsonKey(name: 'homeWorkId') required String homeWorkId,
    @Default(1) @JsonKey(name: 'Page') int page,
    @Default(20) @JsonKey(name: 'PageSize') int pageSize,
  }) = _SubmittedHomeworkParams;
}
