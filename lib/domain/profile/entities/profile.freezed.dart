// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Profile {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get profilePictureUrl => throw _privateConstructorUsedError;
  UserType get role => throw _privateConstructorUsedError;
  StudentExtraModel get studentExtra => throw _privateConstructorUsedError;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String phoneNumber,
      DateTime dateOfBirth,
      Gender gender,
      String profilePictureUrl,
      UserType role,
      StudentExtraModel studentExtra});

  $StudentExtraModelCopyWith<$Res> get studentExtra;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? profilePictureUrl = null,
    Object? role = null,
    Object? studentExtra = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserType,
      studentExtra: null == studentExtra
          ? _value.studentExtra
          : studentExtra // ignore: cast_nullable_to_non_nullable
              as StudentExtraModel,
    ) as $Val);
  }

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentExtraModelCopyWith<$Res> get studentExtra {
    return $StudentExtraModelCopyWith<$Res>(_value.studentExtra, (value) {
      return _then(_value.copyWith(studentExtra: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String phoneNumber,
      DateTime dateOfBirth,
      Gender gender,
      String profilePictureUrl,
      UserType role,
      StudentExtraModel studentExtra});

  @override
  $StudentExtraModelCopyWith<$Res> get studentExtra;
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? profilePictureUrl = null,
    Object? role = null,
    Object? studentExtra = null,
  }) {
    return _then(_$ProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserType,
      studentExtra: null == studentExtra
          ? _value.studentExtra
          : studentExtra // ignore: cast_nullable_to_non_nullable
              as StudentExtraModel,
    ));
  }
}

/// @nodoc

class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNumber,
      required this.dateOfBirth,
      required this.gender,
      required this.profilePictureUrl,
      required this.role,
      required this.studentExtra});

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final DateTime dateOfBirth;
  @override
  final Gender gender;
  @override
  final String profilePictureUrl;
  @override
  final UserType role;
  @override
  final StudentExtraModel studentExtra;

  @override
  String toString() {
    return 'Profile(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, gender: $gender, profilePictureUrl: $profilePictureUrl, role: $role, studentExtra: $studentExtra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.studentExtra, studentExtra) ||
                other.studentExtra == studentExtra));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, phoneNumber,
      dateOfBirth, gender, profilePictureUrl, role, studentExtra);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {required final String id,
      required final String name,
      required final String email,
      required final String phoneNumber,
      required final DateTime dateOfBirth,
      required final Gender gender,
      required final String profilePictureUrl,
      required final UserType role,
      required final StudentExtraModel studentExtra}) = _$ProfileImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  DateTime get dateOfBirth;
  @override
  Gender get gender;
  @override
  String get profilePictureUrl;
  @override
  UserType get role;
  @override
  StudentExtraModel get studentExtra;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
