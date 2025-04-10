import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../../core/result/result.dart';
import '../../repo/classroom_repo.dart';
part 'add_post_use_case.freezed.dart';
part 'add_post_use_case.g.dart';

@Freezed(toJson: true, fromJson: false)
class AddPostParams with _$AddPostParams {
  const factory AddPostParams({
    required String content,
    required String classRoomId,
  }) = _AddPostParams;
}

class AddPostUseCase implements BaseUseCase<void, AddPostParams> {
  final ClassroomRepo _classroomRepo;
  AddPostUseCase(this._classroomRepo);
  @override
  Future<Result<void>> call({required AddPostParams params}) {
    return _classroomRepo.addPost(params: params);
  }
}
