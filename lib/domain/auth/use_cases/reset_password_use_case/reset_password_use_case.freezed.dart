// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetPasswordParams {
  String get email => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordParamsCopyWith<ResetPasswordParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordParamsCopyWith<$Res> {
  factory $ResetPasswordParamsCopyWith(
          ResetPasswordParams value, $Res Function(ResetPasswordParams) then) =
      _$ResetPasswordParamsCopyWithImpl<$Res, ResetPasswordParams>;
  @useResult
  $Res call({String email, String newPassword});
}

/// @nodoc
class _$ResetPasswordParamsCopyWithImpl<$Res, $Val extends ResetPasswordParams>
    implements $ResetPasswordParamsCopyWith<$Res> {
  _$ResetPasswordParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordParamsImplCopyWith<$Res>
    implements $ResetPasswordParamsCopyWith<$Res> {
  factory _$$ResetPasswordParamsImplCopyWith(_$ResetPasswordParamsImpl value,
          $Res Function(_$ResetPasswordParamsImpl) then) =
      __$$ResetPasswordParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String newPassword});
}

/// @nodoc
class __$$ResetPasswordParamsImplCopyWithImpl<$Res>
    extends _$ResetPasswordParamsCopyWithImpl<$Res, _$ResetPasswordParamsImpl>
    implements _$$ResetPasswordParamsImplCopyWith<$Res> {
  __$$ResetPasswordParamsImplCopyWithImpl(_$ResetPasswordParamsImpl _value,
      $Res Function(_$ResetPasswordParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? newPassword = null,
  }) {
    return _then(_$ResetPasswordParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$ResetPasswordParamsImpl implements _ResetPasswordParams {
  const _$ResetPasswordParamsImpl(
      {required this.email, required this.newPassword});

  @override
  final String email;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'ResetPasswordParams(email: $email, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, newPassword);

  /// Create a copy of ResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordParamsImplCopyWith<_$ResetPasswordParamsImpl> get copyWith =>
      __$$ResetPasswordParamsImplCopyWithImpl<_$ResetPasswordParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordParamsImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordParams implements ResetPasswordParams {
  const factory _ResetPasswordParams(
      {required final String email,
      required final String newPassword}) = _$ResetPasswordParamsImpl;

  @override
  String get email;
  @override
  String get newPassword;

  /// Create a copy of ResetPasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordParamsImplCopyWith<_$ResetPasswordParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
