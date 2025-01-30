import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/pagination.dart';
import '../../../domain/learn/enities/learn.dart';
import '../../../domain/learn/uses_cases/learn_use_case.dart';

class LearnCubit extends Cubit<void> with Pagination<Learn> {
  LearnCubit(this._useCase) : super(null) {
    controller.addPageRequestListener((_) {
      getLearnList();
    });
  }

  final LearnUseCase _useCase;

  LearnParams _params = const LearnParams();

  Future<void> getLearnList() async {
    final result = await _useCase(params: _params);

    result.fold(
      (failure) => controller.error = failure,
      (data) {
        if (data.length < _params.pageSize) {
          controller.appendLastPage(data);
          return;
        }

        controller.appendPage(data, _params.page + 1);
        _params = _params.copyWith(page: _params.page + 1);
      },
    );
  }

  void reset() => _params = const LearnParams();
}
