import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/states/base_state.dart';
import '../../../core/utils/pagination.dart';
import '../../../domain/homework/entities/submitted_homework.dart';
import '../../../domain/homework/use_cases/get_submitted_homework_use_case.dart';

class TeacherHomeworksCubit extends Cubit<BaseState<SubmittedHomework>>
    with Pagination {
  TeacherHomeworksCubit(this._useCase) : super(const BaseState.initial()) {
    controller.addPageRequestListener((_) {
      getSubmittedHomework();
    });
  }
  SubmittedHomeworkParams _params =
      const SubmittedHomeworkParams(homeWorkId: '');

  final GetSubmittedHomeworkUseCase _useCase;

  Future<void> getSubmittedHomework() async {
    final result = await _useCase.call(params: _params);

    result.fold((failure) => controller.error = failure.message, (data) {
      if (data.length < _params.pageSize) {
        controller.appendLastPage(data);
        return;
      }
      controller.appendPage(data, _params.page + 1);
      _params = _params.copyWith(page: _params.page + 1);
    });
  }

  void setHomeworkId(String homeworkId) {
    _params = _params.copyWith(homeWorkId: homeworkId);
  }
}
