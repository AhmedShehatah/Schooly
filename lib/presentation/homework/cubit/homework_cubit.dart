import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/web.dart';
import 'package:toastification/toastification.dart';

import '../../../core/states/base_state.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/pagination.dart';
import '../../../domain/homework/entities/homework.dart';
import '../../../domain/homework/use_cases/homework_use_case.dart';
import '../../../domain/homework/use_cases/submit_homework_use_case.dart';

class HomeworkCubit extends Cubit<HomeworkCubitState>
    with Pagination<Homework> {
  HomeworkCubit(this._useCase, this._submitUseCase)
      : super((HomeworkCubitState(
            homeworkState: const BaseState.initial(),
            submitState: const BaseState.initial()))) {
    controller.addPageRequestListener((_) {
      getHomeworkList();
    });
  }
  final HomeworkUseCase _useCase;
  final SubmitHomeworkUseCase _submitUseCase;

  HomeworkParams _params = const HomeworkParams(classRoomId: '');

  void reset() => _params = const HomeworkParams(classRoomId: '');

  void setClassroomId(String id) => _params = _params.copyWith(classRoomId: id);

  Future<void> getHomeworkList() async {
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

  Future<void> submitHomework(
      {required String fileUrl, required String homeworkId}) async {
    final result = await _submitUseCase(
        params: SubmitHomeworkParams(homeWorkId: homeworkId, fileUrl: fileUrl));
    result.fold((e) {
      emit(state.copyWith(submitState: BaseState.failure(failure: e)));
    }, (message) {
      Logger().e(message);

      message.showToast(type: ToastificationType.success);
      emit(state.copyWith(submitState: BaseState.success(data: message)));
    });
  }
}

class HomeworkCubitState {
  final BaseState<String> submitState;
  final BaseState<void> homeworkState;
  const HomeworkCubitState({
    this.submitState = const BaseState.initial(),
    this.homeworkState = const BaseState.initial(),
  });
  HomeworkCubitState copyWith({
    BaseState<String>? submitState,
    BaseState<void>? homeworkState,
  }) {
    return HomeworkCubitState(
      submitState: submitState ?? this.submitState,
      homeworkState: homeworkState ?? this.homeworkState,
    );
  }
}
