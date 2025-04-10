import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../../core/result/result.dart';
import '../../repo/classroom_repo.dart';
part 'add_comment_use_case.freezed.dart';
part 'add_comment_use_case.g.dart';

@Freezed(fromJson: false, toJson: true)
class AddCommentParams with _$AddCommentParams {
  const factory AddCommentParams({
    required String content,
    required int postId,
  }) = _AddCommentParams;
}

class AddCommentUseCase implements BaseUseCase<void, AddCommentParams> {
  final ClassroomRepo _classroomRepo;
  AddCommentUseCase(this._classroomRepo);

  @override
  Future<Result<void>> call({required AddCommentParams params}) {
    return _classroomRepo.addComment(params: params);
  }
}
