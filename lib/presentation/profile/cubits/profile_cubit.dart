import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

import '../../../core/states/base_state.dart';
import '../../../core/utils/extensions.dart';
import '../../../domain/profile/use_cases/profile_use_case.dart';
import '../../../domain/profile/entities/profile.dart';
import '../../../domain/profile/use_cases/update_profile_use_case.dart';

class ProfileCubit extends Cubit<BaseState<Profile>> {
  ProfileCubit(this._profileUseCase, this._updateProfileUseCase)
      : super(const BaseState.initial());
  final ProfileUseCase _profileUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;

  Future<void> fetchProfile() async {
    emit(const BaseState.loading());
    final result = await _profileUseCase();
    result.fold(
      (failure) => emit(BaseState.failure(failure: failure)),
      (data) => emit(BaseState.success(data: data)),
    );
  }

  Future<void> updateProfile({required UpdateProfileParams params}) async {
    //emit(const BaseState.loading());
    final result = await _updateProfileUseCase(params: params);
    result.fold(
      (failure) {
        failure.message.showToast(type: ToastificationType.error);
        return;
        //emit(BaseState.failure(failure: failure));
      },
      (data) => fetchProfile(),
    );
  }
}
