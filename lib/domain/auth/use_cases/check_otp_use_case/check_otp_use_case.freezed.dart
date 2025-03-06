// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_otp_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckOtpParams {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_code')
  String get passwordCode => throw _privateConstructorUsedError;

  /// Serializes this CheckOtpParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckOtpParamsCopyWith<CheckOtpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOtpParamsCopyWith<$Res> {
  factory $CheckOtpParamsCopyWith(
          CheckOtpParams value, $Res Function(CheckOtpParams) then) =
      _$CheckOtpParamsCopyWithImpl<$Res, CheckOtpParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password_code') String passwordCode});
}

/// @nodoc
class _$CheckOtpParamsCopyWithImpl<$Res, $Val extends CheckOtpParams>
    implements $CheckOtpParamsCopyWith<$Res> {
  _$CheckOtpParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? passwordCode = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      passwordCode: null == passwordCode
          ? _value.passwordCode
          : passwordCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckOtpParamsImplCopyWith<$Res>
    implements $CheckOtpParamsCopyWith<$Res> {
  factory _$$CheckOtpParamsImplCopyWith(_$CheckOtpParamsImpl value,
          $Res Function(_$CheckOtpParamsImpl) then) =
      __$$CheckOtpParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password_code') String passwordCode});
}

/// @nodoc
class __$$CheckOtpParamsImplCopyWithImpl<$Res>
    extends _$CheckOtpParamsCopyWithImpl<$Res, _$CheckOtpParamsImpl>
    implements _$$CheckOtpParamsImplCopyWith<$Res> {
  __$$CheckOtpParamsImplCopyWithImpl(
      _$CheckOtpParamsImpl _value, $Res Function(_$CheckOtpParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? passwordCode = null,
  }) {
    return _then(_$CheckOtpParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      passwordCode: null == passwordCode
          ? _value.passwordCode
          : passwordCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$CheckOtpParamsImpl extends _CheckOtpParams {
  const _$CheckOtpParamsImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password_code') required this.passwordCode})
      : super._();

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password_code')
  final String passwordCode;

  @override
  String toString() {
    return 'CheckOtpParams(email: $email, passwordCode: $passwordCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOtpParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.passwordCode, passwordCode) ||
                other.passwordCode == passwordCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, passwordCode);

  /// Create a copy of CheckOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckOtpParamsImplCopyWith<_$CheckOtpParamsImpl> get copyWith =>
      __$$CheckOtpParamsImplCopyWithImpl<_$CheckOtpParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckOtpParamsImplToJson(
      this,
    );
  }
}

abstract class _CheckOtpParams extends CheckOtpParams {
  const factory _CheckOtpParams(
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'password_code') required final String passwordCode}) =
      _$CheckOtpParamsImpl;
  const _CheckOtpParams._() : super._();

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'password_code')
  String get passwordCode;

  /// Create a copy of CheckOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckOtpParamsImplCopyWith<_$CheckOtpParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
