import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/pagination.dart';
import '../../../domain/homework/entities/homework.dart';
import '../../../domain/homework/use_cases/homework_use_case.dart';

class HomeworkCubit extends Cubit<void> with Pagination<Homework> {
  HomeworkCubit(this._useCase) : super(()) {
    controller.addPageRequestListener((_) {
      getHomeworkList();
    });
  }
  final HomeworkUseCase _useCase;
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
}
