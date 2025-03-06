import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../domain/auth/use_cases/check_otp_use_case/check_otp_use_case.dart';

class CheckOtpCubit extends Cubit<BaseState<void>> {
  CheckOtpCubit(this._useCase) : super(const BaseState.initial());
  final CheckOtpUseCase _useCase;

  Future<void> verifyCode({required CheckOtpParams params}) async {
    emit(const BaseState.loading());
    final result = await _useCase(params: params);
    result.fold((failure) {
      failure.message.showToast(type: ToastificationType.error);
      emit(BaseState.failure(failure: failure));
    }, (data) => emit(const BaseState.success(data: null)));
  }
}
