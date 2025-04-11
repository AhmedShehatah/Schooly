import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/pagination.dart';
import '../../../domain/classroom/entities/post/post.dart';
import '../../../domain/classroom/use_case/get_posts_use_case/get_posts_use_case.dart';

class PostsListCubit extends Cubit<void> with Pagination<Post> {
  PostsListCubit(this._useCase) : super(()) {
    controller.addPageRequestListener((_) => getPosts());
  }

  final GetPostsUseCase _useCase;

  GetPostParams _params = const GetPostParams(classRoomId: '');

  void reset() => _params = const GetPostParams(classRoomId: '');

  void setClassroomId(String id) => _params = _params.copyWith(classRoomId: id);

  Future<void> getPosts() async {
    final result = await _useCase(params: _params);
    result.fold((failure) => controller.error = failure.message, (data) {
      if (data.length < _params.pageSize) {
        controller.appendLastPage(data);
        return;
      }
      controller.appendPage(data, _params.page + 1);
      _params = _params.copyWith(page: _params.page + 1);
    });
  }
}
