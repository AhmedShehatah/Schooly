import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/pagination.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';
import '../../../domain/upcoming_classes/use_cases/upcoming_classes/upcoming_classes_use_case.dart';

class UpcomingClassesCubit extends Cubit<void>
    with Pagination<UpcomingClasses> {
  UpcomingClassesCubit(this._useCase) : super(null) {
    controller.addPageRequestListener((page) {
      getUpcomingClassesList(page);
    });
  }

  final UpcomingClassesUseCase _useCase;

  UpcomingClassesParams _params = const UpcomingClassesParams();

  Future<void> getUpcomingClassesList(int page) async {
    final result = await _useCase(params: _params);

    result.fold(
      (failure) => controller.error = failure.message,
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

  void reset() => _params = const UpcomingClassesParams();
}
