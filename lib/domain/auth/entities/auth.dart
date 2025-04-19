import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth.freezed.dart';

@freezed
class Auth with _$Auth {
  const Auth._();
  const factory Auth({
    required String id,
    required String name,
    required String email,
    required int role,
  }) = _Auth;
}
