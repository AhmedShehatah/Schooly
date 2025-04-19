import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/states/base_state.dart';
import '../../../../domain/auth/entities/user.dart';
import '../../../../domain/auth/use_cases/login_use_case/login_use_case.dart';

class LoginCubit extends Cubit<BaseState<User>> {
  LoginCubit(this._useCase) : super(const BaseState.initial());
  final LoginUseCase _useCase;
  Future<void> login({required LoginParams params}) async {
    emit(const BaseState.loading());
    final result = await _useCase.call(params: params);
    result.fold((failure) {
      emit(BaseState.failure(failure: failure));
    }, (data) async {
      emit(BaseState.success(data: data));
    });
  }
}
