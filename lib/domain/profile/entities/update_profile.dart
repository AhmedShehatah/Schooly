import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile.freezed.dart';

@freezed
class UpdateProfile with _$UpdateProfile {
  const factory UpdateProfile({
    required String profilePictureUrl,
    required String name,
    required String email,
  }) = _UpdateProfile;
}
/*
{
  "profilePictureUrl": "string",
  "name": "string",
  "email": "user@example.com"
}
*/
