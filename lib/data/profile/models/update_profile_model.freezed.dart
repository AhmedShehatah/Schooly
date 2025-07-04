// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProfileModel _$UpdateProfileModelFromJson(Map<String, dynamic> json) {
  return _UpdateProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileModel {
  String get profilePictureUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this UpdateProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileModelCopyWith<UpdateProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileModelCopyWith<$Res> {
  factory $UpdateProfileModelCopyWith(
          UpdateProfileModel value, $Res Function(UpdateProfileModel) then) =
      _$UpdateProfileModelCopyWithImpl<$Res, UpdateProfileModel>;
  @useResult
  $Res call({String profilePictureUrl, String name, String email});
}

/// @nodoc
class _$UpdateProfileModelCopyWithImpl<$Res, $Val extends UpdateProfileModel>
    implements $UpdateProfileModelCopyWith<$Res> {
  _$UpdateProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePictureUrl = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileModelImplCopyWith<$Res>
    implements $UpdateProfileModelCopyWith<$Res> {
  factory _$$UpdateProfileModelImplCopyWith(_$UpdateProfileModelImpl value,
          $Res Function(_$UpdateProfileModelImpl) then) =
      __$$UpdateProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String profilePictureUrl, String name, String email});
}

/// @nodoc
class __$$UpdateProfileModelImplCopyWithImpl<$Res>
    extends _$UpdateProfileModelCopyWithImpl<$Res, _$UpdateProfileModelImpl>
    implements _$$UpdateProfileModelImplCopyWith<$Res> {
  __$$UpdateProfileModelImplCopyWithImpl(_$UpdateProfileModelImpl _value,
      $Res Function(_$UpdateProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePictureUrl = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$UpdateProfileModelImpl(
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfileModelImpl extends _UpdateProfileModel {
  const _$UpdateProfileModelImpl(
      {required this.profilePictureUrl,
      required this.name,
      required this.email})
      : super._();

  factory _$UpdateProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProfileModelImplFromJson(json);

  @override
  final String profilePictureUrl;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'UpdateProfileModel(profilePictureUrl: $profilePictureUrl, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileModelImpl &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profilePictureUrl, name, email);

  /// Create a copy of UpdateProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileModelImplCopyWith<_$UpdateProfileModelImpl> get copyWith =>
      __$$UpdateProfileModelImplCopyWithImpl<_$UpdateProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileModel extends UpdateProfileModel {
  const factory _UpdateProfileModel(
      {required final String profilePictureUrl,
      required final String name,
      required final String email}) = _$UpdateProfileModelImpl;
  const _UpdateProfileModel._() : super._();

  factory _UpdateProfileModel.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileModelImpl.fromJson;

  @override
  String get profilePictureUrl;
  @override
  String get name;
  @override
  String get email;

  /// Create a copy of UpdateProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileModelImplCopyWith<_$UpdateProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
