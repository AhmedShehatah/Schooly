import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/states/base_state.dart';
import '../../../core/utils/pagination.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';
import '../../../domain/upcoming_classes/use_cases/upcoming_classes/upcoming_classes_use_case.dart';

class UpcomingClassesCubit extends Cubit<BaseState<List<UpcomingClasses>>>
    with Pagination<UpcomingClasses> {
  UpcomingClassesCubit(this._useCase) : super(const BaseState.initial()) {
    controller.addPageRequestListener((page) {
      getUpcomingClassesList(page);
    });
  }

  final UpcomingClassesUseCase _useCase;

  UpcomingClassesParams _params = const UpcomingClassesParams();

  Future<void> getUpcomingClassesPage() async {
    emit(const BaseState.loading());
    final result = await _useCase(
        params: const UpcomingClassesParams(page: 1, pageSize: 10));
    result.fold((e) {
      SnackBar(
        content: CustomText.s10(e.message),
      );
      emit(BaseState.failure(failure: e));
    }, (data) {
      emit(BaseState.success(data: data));
    });
  }

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
