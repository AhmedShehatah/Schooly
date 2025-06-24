import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/enums.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String name,
    required String email,
    required UserType role,
    required Gender gender,
    required String profilePictureUrl,
  }) = _User;
}
