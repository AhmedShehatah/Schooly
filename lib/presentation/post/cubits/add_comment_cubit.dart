import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/states/base_state.dart';
import '../../../domain/classroom/use_case/add_comment_use_case/add_comment_use_case.dart';

class AddCommentCubit extends Cubit<BaseState<void>> {
  AddCommentCubit(this._addCommentUseCase) : super(const BaseState.initial());

  final AddCommentUseCase _addCommentUseCase;
  AddCommentParams _params = const AddCommentParams(
    postId: 0,
    content: '',
  );

  void reset() => _params = const AddCommentParams(
        postId: 0,
        content: '',
      );

  void setClassroomId(int id) => _params = _params.copyWith(
        postId: id,
      );

  Future<void> addComment({required AddCommentParams params}) async {
    emit(const BaseState.loading());

    final result = await _addCommentUseCase(params: params);

    result.fold(
      (failure) => emit(BaseState.failure(failure: failure)),
      (_) => emit(const BaseState.success(data: null)),
    );
  }
}
