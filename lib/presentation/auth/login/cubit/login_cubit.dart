import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schooly/core/shared_preferences/shared_prefs.dart';
import '../../../../app/di/injection_container.dart';
import '../../../../core/states/base_state.dart';
import '../../../../domain/auth/entities/auth.dart';
import '../../../../domain/auth/use_cases/login_use_case/login_use_case.dart';

class LoginCubit extends Cubit<BaseState<Auth>> {
  LoginCubit(this._useCase) : super(const BaseState.initial());
  final LoginUseCase _useCase;
  Future<void> login({required LoginParams params}) async {
    emit(const BaseState.loading());
    final result = await _useCase.call(params: params);
    result.fold((failure) {
      emit(BaseState.failure(failure: failure));
    }, (data) async {
      await sl<SharedPrefs>().saveLoggedIn(true);
      await sl<SharedPrefs>().saveUserDetails({
        'id': data.id,
        'name': data.name,
        'email': data.email,
      });
      emit(BaseState.success(data: data));
    });
  }
}
