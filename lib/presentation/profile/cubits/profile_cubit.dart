import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

import '../../../core/states/base_state.dart';
import '../../../core/utils/extensions.dart';
import '../../../domain/profile/entities/update_profile.dart';
import '../../../domain/profile/use_cases/profile_use_case.dart';
import '../../../domain/profile/entities/profile.dart';

class ProfileCubit extends Cubit<BaseState<Profile>> {
  ProfileCubit(this._useCase) : super(const BaseState.initial());
  final ProfileUseCase _useCase;
  Future<void> fetchProfile() async {
    emit(const BaseState.loading());
    final result = await _useCase();
    result.fold(
      (failure) => emit(BaseState.failure(failure: failure)),
      (data) => emit(BaseState.success(data: data)),
    );
  }

  Future<void> updateProfile(UpdateProfile profile) async {
    //emit(const BaseState.loading());
    final result = await _useCase.updateProfile(profile);
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
