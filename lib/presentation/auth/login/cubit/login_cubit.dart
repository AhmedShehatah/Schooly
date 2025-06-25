import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/states/base_state.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../domain/auth/entities/user.dart';
import '../../../../domain/auth/use_cases/login_use_case/login_use_case.dart';
import '../../../../domain/auth/use_cases/login_with_face_id_use_case/login_with_face_id_use_case.dart';

class LoginCubit extends Cubit<BaseState<User>> {
  LoginCubit(this._useCase, this._useCaseWithFaceId)
      : super(const BaseState.initial());
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

  final LoginWithFaceIdUseCase _useCaseWithFaceId;
  Future<void> loginWithFace({required File file}) async {
    emit(const BaseState.loading());
    final result = await _useCaseWithFaceId(params: file);
    result.fold((failure) {
      failure.message.showToast(type: ToastificationType.error);
      emit(BaseState.failure(failure: failure));
    }, (data) async {
      emit(BaseState.success(data: data));
    });
  }
}
