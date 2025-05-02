import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/states/base_state.dart';
import '../../../domain/classroom/use_case/add_post_use_case/add_post_use_case.dart';

class AddPostCubit extends Cubit<BaseState<void>> {
  AddPostCubit(this._addPostUseCase) : super(const BaseState.initial());

  final AddPostUseCase _addPostUseCase;
  AddPostParams _params = const AddPostParams(classRoomId: '', content: '');

  void reset() => _params = const AddPostParams(classRoomId: '', content: '');

  void setClassroomId(String id) => _params = _params.copyWith(classRoomId: id);

  Future<void> addPost({required AddPostParams params}) async {
    emit(const BaseState.loading());

    final result = await _addPostUseCase(params: params);

    result.fold(
      (failure) => emit(BaseState.failure(failure: failure)),
      (_) => emit(const BaseState.success(data: null)),
    );
  }
}
