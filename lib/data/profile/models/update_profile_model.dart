import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/profile/entities/update_profile.dart';

part 'update_profile_model.freezed.dart';
part 'update_profile_model.g.dart';

@freezed
class UpdateProfileModel with _$UpdateProfileModel {
  const UpdateProfileModel._();

  const factory UpdateProfileModel({
    required String profilePictureUrl,
    required String name,
    required String email,
  }) = _UpdateProfileModel;

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileModelFromJson(json);

  UpdateProfile toEntity() {
    return UpdateProfile(
      profilePictureUrl: profilePictureUrl,
      name: name,
      email: email,
    );
  }
}
