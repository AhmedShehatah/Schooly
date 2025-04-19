import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/entities/auth.dart';
part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const AuthModel._();
  const factory AuthModel({
    required String id,
    required String name,
    required String email,
    required int role,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Auth toEntity() => Auth(
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