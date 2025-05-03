import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/result/result.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../repo/classroom_repo.dart';

part 'add_new_session_use_case.freezed.dart';
part 'add_new_session_use_case.g.dart';

class AddNewSessionUseCase implements BaseUseCase<void, AddNewSessionParams> {
  final ClassroomRepo _repo;
  const AddNewSessionUseCase(this._repo);
  @override
  Future<Result<void>> call({required AddNewSessionParams params}) {
    return _repo.addSession(params: params);
  }
}

@Freezed(toJson: true, fromJson: false)
class AddNewSessionParams with _$AddNewSessionParams {
  const AddNewSessionParams._();
  const factory AddNewSessionParams({
    String? title,
    String? classRoomId,
    LessonType? lessonType,
    String? date,
    String? from,
    String? to,
  }) = _AddNewSessionParams;
}
