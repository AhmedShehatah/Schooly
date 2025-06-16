// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProfileParams {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  /// Serializes this UpdateProfileParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileParamsCopyWith<UpdateProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileParamsCopyWith<$Res> {
  factory $UpdateProfileParamsCopyWith(
          UpdateProfileParams value, $Res Function(UpdateProfileParams) then) =
      _$UpdateProfileParamsCopyWithImpl<$Res, UpdateProfileParams>;
  @useResult
  $Res call({String name, String email, String? profilePictureUrl});
}

/// @nodoc
class _$UpdateProfileParamsCopyWithImpl<$Res, $Val extends UpdateProfileParams>
    implements $UpdateProfileParamsCopyWith<$Res> {
  _$UpdateProfileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileParamsImplCopyWith<$Res>
    implements $UpdateProfileParamsCopyWith<$Res> {
  factory _$$UpdateProfileParamsImplCopyWith(_$UpdateProfileParamsImpl value,
          $Res Function(_$UpdateProfileParamsImpl) then) =
      __$$UpdateProfileParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String? profilePictureUrl});
}

/// @nodoc
class __$$UpdateProfileParamsImplCopyWithImpl<$Res>
    extends _$UpdateProfileParamsCopyWithImpl<$Res, _$UpdateProfileParamsImpl>
    implements _$$UpdateProfileParamsImplCopyWith<$Res> {
  __$$UpdateProfileParamsImplCopyWithImpl(_$UpdateProfileParamsImpl _value,
      $Res Function(_$UpdateProfileParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_$UpdateProfileParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$UpdateProfileParamsImpl extends _UpdateProfileParams {
  const _$UpdateProfileParamsImpl(
      {required this.name, required this.email, this.profilePictureUrl})
      : super._();

  @override
  final String name;
  @override
  final String email;
  @override
  final String? profilePictureUrl;

  @override
  String toString() {
    return 'UpdateProfileParams(name: $name, email: $email, profilePictureUrl: $profilePictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, profilePictureUrl);

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileParamsImplCopyWith<_$UpdateProfileParamsImpl> get copyWith =>
      __$$UpdateProfileParamsImplCopyWithImpl<_$UpdateProfileParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileParams extends UpdateProfileParams {
  const factory _UpdateProfileParams(
      {required final String name,
      required final String email,
      final String? profilePictureUrl}) = _$UpdateProfileParamsImpl;
  const _UpdateProfileParams._() : super._();

  @override
  String get name;
  @override
  String get email;
  @override
  String? get profilePictureUrl;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileParamsImplCopyWith<_$UpdateProfileParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
