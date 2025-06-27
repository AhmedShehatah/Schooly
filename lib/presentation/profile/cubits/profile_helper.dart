import '../../../domain/profile/use_cases/update_profile_use_case.dart';

mixin ProfileHelper {
  UpdateProfileParams _params = const UpdateProfileParams();

  void updateParams({
    String? name,
    String? email,
    String? profilePictureUrl,
  }) {
    _params = _params.copyWith(
      name: name ?? _params.name,
      email: email ?? _params.email,
      profilePictureUrl: profilePictureUrl ?? _params.profilePictureUrl,
    );
  }

  UpdateProfileParams get params => _params;
}
