import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/use_cases/base_use_case.dart';
import '../../../core/result/result.dart';
import '../entities/homework.dart';
import '../repos/homework_repo.dart';
part 'homework_use_case.freezed.dart';
part 'homework_use_case.g.dart';

class HomeworkUseCase implements BaseUseCase<List<Homework>, HomeworkParams> {
  final HomeworkRepo _repo;
  const HomeworkUseCase(this._repo);

  @override
  Future<Result<List<Homework>>> call({required HomeworkParams params}) {
    return _repo.getHomeworkActive(params: params);
  }
}

@Freezed(fromJson: false, toJson: true)
class HomeworkParams with _$HomeworkParams {
  const HomeworkParams._();
  const factory HomeworkParams({
    @Default(1) @JsonKey(name: 'Page') int page,
    @Default(20) @JsonKey(name: 'PageSize') int pageSize,
    @JsonKey(name: 'ClassRoomId') required String classRoomId,
  }) = _HomeworkParams;
}
