import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/states/base_state.dart';
import '../../../domain/homework/use_cases/add_homework_use_case/add_homework_use_case.dart';

class AddHomeworkCubit extends Cubit<BaseState<void>> {
  AddHomeworkCubit(this._useCase) : super(const BaseState.initial());
  final AddHomeworkUseCase _useCase;

  Future<void> addHomework(AddHomeworkParams params) async {
    emit(const BaseState.loading());
    final result = await _useCase(params: params);
    result.fold(
      (failure) => emit(BaseState.failure(failure: failure)),
      (_) => emit(const BaseState.success(data: null)),
    );
  }
}
