import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/enums.dart';
import '../../../domain/auth/entities/user.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel(
      {required String id,
      required String name,
      required String email,
      required UserType role,
      required Gender? gender,
      required String? profilePictureUrl}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
      id: id,
      name: name,
      email: email,
      role: role,
      gender: gender,
      profilePictureUrl: profilePictureUrl);
}
