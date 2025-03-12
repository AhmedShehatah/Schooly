import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../domain/auth/use_cases/forget_password_use_case/forget_password_use_case.dart';

class ForgetPasswordCubit extends Cubit<BaseState<void>> {
  ForgetPasswordCubit(this._useCase) : super(const BaseState.initial());
  final ForgetPasswordUseCase _useCase;
  Future<void> forgetPassword({required ForgetPasswordParams params}) async {
    emit(const BaseState.loading());
    final result = await _useCase(params: params);
    result.fold((failure) {
      failure.message.showToast(type: ToastificationType.error);
      emit(BaseState.failure(failure: failure));
    }, (data) => emit(const BaseState.success(data: null)));
  }
}
