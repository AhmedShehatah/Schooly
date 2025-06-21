import 'package:freezed_annotation/freezed_annotation.dart';
import 'student_extra_model.dart';
import '../../../core/enums/enums.dart';
import '../../../domain/profile/entities/profile.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  const factory ProfileModel({
    required String id,
    required String name,
    required String email,
    required String? phoneNumber,
    required DateTime dateOfBirth,
    required Gender gender,
    required String profilePictureUrl,
    required UserType role,
    required StudentExtraModel? studentExtra,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Profile toEntity() {
    return Profile(
      id: id,
      name: name,
      email: email,
      phoneNumber: phoneNumber ?? '',
      dateOfBirth: dateOfBirth,
      gender: gender,
      profilePictureUrl: profilePictureUrl,
      role: role,
      studentExtra: studentExtra,
    );
  }
}
