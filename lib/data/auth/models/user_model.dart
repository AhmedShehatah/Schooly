import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/entities/user.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    required int role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
        id: id,
        name: name,
        email: email,
        role: role,
      );
}
/**
 * {
  
    "id": "02396de6-b49a-4477-b25f-d99a3702a455",
    "name": "Ahmed Shehatah",
    "email": "teacher@gmail.com",
    "role": 2
  
}
 */