import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../../core/result/result.dart';
import '../../../classroom/repo/classroom_repo.dart';
part 'add_homework_use_case.freezed.dart';
part 'add_homework_use_case.g.dart';

class AddHomeworkUseCase extends BaseUseCase<void, AddHomeworkParams> {
  final ClassroomRepo _repo;

  AddHomeworkUseCase(this._repo);

  @override
  Future<Result<void>> call({required AddHomeworkParams params}) {
    return _repo.addHomework(params: params);
  }
}

@Freezed(toJson: true, fromJson: false)
class AddHomeworkParams with _$AddHomeworkParams {
  const factory AddHomeworkParams({
    required String lessonId,
    required DateTime deadline,
    required String fileUrl,
  }) = _AddHomeworkParams;
}
