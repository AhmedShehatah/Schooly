import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../../core/result/result.dart';
import '../../../classroom/repo/classroom_repo.dart';
import '../../entities/lesson.dart';
part 'get_lessons_use_case.freezed.dart';
part 'get_lessons_use_case.g.dart';

class GetLessonsUseCase extends BaseUseCase<List<Lesson>, GetLessonsParams> {
  final ClassroomRepo _repo;
  GetLessonsUseCase(this._repo);
  @override
  Future<Result<List<Lesson>>> call({required GetLessonsParams params}) async {
    return _repo.getLessons(params: params);
  }
}

@Freezed(toJson: true, fromJson: false)
class GetLessonsParams with _$GetLessonsParams {
  const factory GetLessonsParams({
    required String classRoomId,
    @Default(1) int page,
    @Default(300) int pageSize,
  }) = _GetLessonsParams;
}
