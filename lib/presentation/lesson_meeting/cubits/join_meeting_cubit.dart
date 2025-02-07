import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/states/base_state.dart';
import '../../../domain/upcoming_classes/entities/sessions/session.dart';
import '../../../domain/upcoming_classes/use_cases/join_session_use_case/join_session_use_case.dart';

class JoinMeetingCubit extends Cubit<BaseState<Session>> {
  JoinMeetingCubit(this._useCase) : super(const BaseState.initial());

  final JoinSessionUseCase _useCase;

  Future<void> joinSession(String id) async {
    emit(const BaseState.loading());
    final result = await _useCase.call(params: id);
    result.fold((failure) {
      emit(BaseState.failure(failure: failure));
    }, (data) {
      emit(BaseState.success(data: data));
    });
  }
}
