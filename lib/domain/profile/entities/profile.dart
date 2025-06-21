import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/enums.dart';
import '../../../data/profile/models/student_extra_model.dart';
part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String id,
    required String name,
    required String email,
    required String phoneNumber,
    required DateTime dateOfBirth,
    required Gender gender,
    required String profilePictureUrl,
    required UserType role,
    required StudentExtraModel studentExtra,
  }) = _Profile;
}
