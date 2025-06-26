import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/cubits/user_cubit.dart';
import '../../../core/enums/enums.dart';
import '../../../core/states/base_state.dart';
import '../../../core/utils/extensions.dart';
import '../../../domain/auth/entities/user.dart';
import '../../../domain/profile/use_cases/profile_use_case.dart';
import '../../../domain/profile/entities/profile.dart';
import '../../../domain/profile/use_cases/update_profile_use_case.dart';
import 'profile_helper.dart';

class ProfileCubit extends Cubit<BaseState<Profile>> with ProfileHelper {
  ProfileCubit(this._profileUseCase, this._updateProfileUseCase)
      : super(const BaseState.initial());
  final ProfileUseCase _profileUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;

  Future<void> fetchProfile({
    bool isRefresh = false,
  }) async {
    if (!isRefresh) emit(const BaseState.loading());
    final result = await _profileUseCase();
    result.fold(
      (failure) => emit(BaseState.failure(failure: failure)),
      (data) => emit(BaseState.success(data: data)),
    );
  }

  Future<void> updateProfile() async {
    final result = await _updateProfileUseCase(params: params);
    result.fold((failure) {
      failure.message.showToast(type: ToastificationType.error);
      return;
    }, (data) async {
      await fetchProfile(isRefresh: true);

      final oldUser = sl<UserCubit>().state;
      final updatedUser = User(
        id: oldUser!.id,
        name: params.name ?? oldUser.name,
        email: params.email ?? oldUser.email,
        role: oldUser.role,
        gender: oldUser.gender,
        profilePictureUrl:
            params.profilePictureUrl ?? oldUser.profilePictureUrl,
      );

      sl<UserCubit>().setUser(updatedUser);
    });
  }
}
