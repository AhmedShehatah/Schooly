import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/states/base_state.dart';
import '../../../domain/classroom/entities/classroom/classroom.dart';
import '../../../domain/classroom/use_case/get_classrooms_use_case/get_classrooms_use_case.dart';

class ClassroomListCubit extends Cubit<BaseState<List<Classroom>>> {
  ClassroomListCubit(this._useCase) : super(const BaseState.initial());

  final GetClassroomsUseCase _useCase;

  Future<void> getClassrooms() async {
    emit(const BaseState.loading());
    final result = await _useCase.call();
    result.fold((failure) {
      emit(BaseState.failure(failure: failure));
    }, (data) {
      emit(BaseState.success(data: data));
    });
  }

  String chosenClassroomId = '';
  void setChosenClassroomId(String id) {
    chosenClassroomId = id;
  }
}
