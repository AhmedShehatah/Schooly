import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/result/result.dart';
import '../../entities/post/post.dart';
import '../../repo/classroom_repo.dart';
part 'get_posts_use_case.freezed.dart';
part 'get_posts_use_case.g.dart';

@Freezed(toJson: true, fromJson: false)
class GetPostParams with _$GetPostParams {
  const factory GetPostParams({
    @Default(1) @JsonKey(name: 'Page') int page,
    @Default(20) @JsonKey(name: 'PageSize') int pageSize,
    @JsonKey(name: 'ClassRoomId') required String classRoomId,
  }) = _GetPostParams;
}

class GetPostsUseCase {
  final ClassroomRepo _classroomRepo;
  GetPostsUseCase(this._classroomRepo);
  Future<Result<List<Post>>> call({required GetPostParams params}) {
    return _classroomRepo.getPosts(params: params);
  }
}
