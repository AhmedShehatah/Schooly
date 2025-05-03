import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/enums/enums.dart';
import '../../../core/network/failure/failure.dart';
import '../../../core/states/base_state.dart';
import '../../../domain/classroom/use_case/add_new_session_use_case/add_new_session_use_case.dart';

class AddSessionCubit extends Cubit<BaseState<void>> {
  AddSessionCubit(this._useCase) : super(const BaseState.initial());

  final AddNewSessionUseCase _useCase;

  AddNewSessionParams _params = const AddNewSessionParams();

  void setParams(
      {String? classroomId,
      String? title,
      String? date,
      String? from,
      String? to,
      LessonType? lessonType}) {
    _params = _params.copyWith(
      classRoomId: classroomId ?? _params.classRoomId,
      title: title ?? _params.title,
      date: date ?? _params.date,
      from: from ?? _params.from,
      to: to ?? _params.to,
      lessonType: lessonType ?? _params.lessonType,
    );
  }

  void reset() => _params = const AddNewSessionParams();

  Future<void> addSession() async {
    emit(const BaseState.loading());
    final result = await _useCase(params: _params);
    result.fold(
      (Failure failure) => emit(BaseState.failure(failure: failure)),
      (_) => emit(
        const BaseState.success(data: null),
      ),
    );
  }
}
