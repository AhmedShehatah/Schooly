import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../../core/result/result.dart';
import '../../entities/comment/comment.dart';
import '../../repo/classroom_repo.dart';
part 'get_comment_use_case.freezed.dart';

@Freezed(toJson: false, fromJson: false)
class GetCommentParams with _$GetCommentParams {
  const factory GetCommentParams({
    required String postId,
    @Default(1) int page,
    @Default(10) int pageSize,
  }) = _GetCommentParams;
}

class GetCommentUseCase
    implements BaseUseCase<List<Comment>, GetCommentParams> {
  final ClassroomRepo _classroomRepo;
  GetCommentUseCase(this._classroomRepo);

  @override
  Future<Result<List<Comment>>> call({required GetCommentParams params}) {
    return _classroomRepo.getPostComments(params: params);
  }
}
