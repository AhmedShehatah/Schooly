import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/states/base_state.dart';
import '../../../domain/lookups/entities/lesson.dart';
import '../../../domain/lookups/use_cases/get_lessons_use_case/get_lessons_use_case.dart';

class LessonsCubit extends Cubit<BaseState<List<Lesson>>> {
  LessonsCubit(this._useCase) : super(const BaseState.initial());
  final GetLessonsUseCase _useCase;

  Future<void> getLessons({required GetLessonsParams params}) async {
    emit(const BaseState.loading());
    final result = await _useCase(params: params);
    result.fold(
      (failure) => emit(BaseState.failure(failure: failure)),
      (lessons) => emit(BaseState.success(data: lessons)),
    );
  }
}
