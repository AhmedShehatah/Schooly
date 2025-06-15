// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_extra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentExtra {
  String? get parent => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  DateTime get dateOfJoining => throw _privateConstructorUsedError;
  int get department => throw _privateConstructorUsedError;
  int get grade => throw _privateConstructorUsedError;

  /// Create a copy of StudentExtra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentExtraCopyWith<StudentExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentExtraCopyWith<$Res> {
  factory $StudentExtraCopyWith(
          StudentExtra value, $Res Function(StudentExtra) then) =
      _$StudentExtraCopyWithImpl<$Res, StudentExtra>;
  @useResult
  $Res call(
      {String? parent,
      String address,
      DateTime dateOfJoining,
      int department,
      int grade});
}

/// @nodoc
class _$StudentExtraCopyWithImpl<$Res, $Val extends StudentExtra>
    implements $StudentExtraCopyWith<$Res> {
  _$StudentExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentExtra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
    Object? address = null,
    Object? dateOfJoining = null,
    Object? department = null,
    Object? grade = null,
  }) {
    return _then(_value.copyWith(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfJoining: null == dateOfJoining
          ? _value.dateOfJoining
          : dateOfJoining // ignore: cast_nullable_to_non_nullable
              as DateTime,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentExtraImplCopyWith<$Res>
    implements $StudentExtraCopyWith<$Res> {
  factory _$$StudentExtraImplCopyWith(
          _$StudentExtraImpl value, $Res Function(_$StudentExtraImpl) then) =
      __$$StudentExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? parent,
      String address,
      DateTime dateOfJoining,
      int department,
      int grade});
}

/// @nodoc
class __$$StudentExtraImplCopyWithImpl<$Res>
    extends _$StudentExtraCopyWithImpl<$Res, _$StudentExtraImpl>
    implements _$$StudentExtraImplCopyWith<$Res> {
  __$$StudentExtraImplCopyWithImpl(
      _$StudentExtraImpl _value, $Res Function(_$StudentExtraImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentExtra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
    Object? address = null,
    Object? dateOfJoining = null,
    Object? department = null,
    Object? grade = null,
  }) {
    return _then(_$StudentExtraImpl(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfJoining: null == dateOfJoining
          ? _value.dateOfJoining
          : dateOfJoining // ignore: cast_nullable_to_non_nullable
              as DateTime,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StudentExtraImpl implements _StudentExtra {
  const _$StudentExtraImpl(
      {this.parent,
      required this.address,
      required this.dateOfJoining,
      required this.department,
      required this.grade});

  @override
  final String? parent;
  @override
  final String address;
  @override
  final DateTime dateOfJoining;
  @override
  final int department;
  @override
  final int grade;

  @override
  String toString() {
    return 'StudentExtra(parent: $parent, address: $address, dateOfJoining: $dateOfJoining, department: $department, grade: $grade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentExtraImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.dateOfJoining, dateOfJoining) ||
                other.dateOfJoining == dateOfJoining) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, parent, address, dateOfJoining, department, grade);

  /// Create a copy of StudentExtra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentExtraImplCopyWith<_$StudentExtraImpl> get copyWith =>
      __$$StudentExtraImplCopyWithImpl<_$StudentExtraImpl>(this, _$identity);
}

abstract class _StudentExtra implements StudentExtra {
  const factory _StudentExtra(
      {final String? parent,
      required final String address,
      required final DateTime dateOfJoining,
      required final int department,
      required final int grade}) = _$StudentExtraImpl;

  @override
  String? get parent;
  @override
  String get address;
  @override
  DateTime get dateOfJoining;
  @override
  int get department;
  @override
  int get grade;

  /// Create a copy of StudentExtra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentExtraImplCopyWith<_$StudentExtraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
