// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learn.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Learn {
  String get id => throw _privateConstructorUsedError;
  String get studentName => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  int get department => throw _privateConstructorUsedError;
  int get grade => throw _privateConstructorUsedError;
  String get parentName => throw _privateConstructorUsedError;
  String get parentPhone1 => throw _privateConstructorUsedError;
  String get dateOfJoining => throw _privateConstructorUsedError;

  /// Create a copy of Learn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearnCopyWith<Learn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearnCopyWith<$Res> {
  factory $LearnCopyWith(Learn value, $Res Function(Learn) then) =
      _$LearnCopyWithImpl<$Res, Learn>;
  @useResult
  $Res call(
      {String id,
      String studentName,
      String studentId,
      int department,
      int grade,
      String parentName,
      String parentPhone1,
      String dateOfJoining});
}

/// @nodoc
class _$LearnCopyWithImpl<$Res, $Val extends Learn>
    implements $LearnCopyWith<$Res> {
  _$LearnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Learn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentName = null,
    Object? studentId = null,
    Object? department = null,
    Object? grade = null,
    Object? parentName = null,
    Object? parentPhone1 = null,
    Object? dateOfJoining = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      parentName: null == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
      parentPhone1: null == parentPhone1
          ? _value.parentPhone1
          : parentPhone1 // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfJoining: null == dateOfJoining
          ? _value.dateOfJoining
          : dateOfJoining // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearnImplCopyWith<$Res> implements $LearnCopyWith<$Res> {
  factory _$$LearnImplCopyWith(
          _$LearnImpl value, $Res Function(_$LearnImpl) then) =
      __$$LearnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String studentName,
      String studentId,
      int department,
      int grade,
      String parentName,
      String parentPhone1,
      String dateOfJoining});
}

/// @nodoc
class __$$LearnImplCopyWithImpl<$Res>
    extends _$LearnCopyWithImpl<$Res, _$LearnImpl>
    implements _$$LearnImplCopyWith<$Res> {
  __$$LearnImplCopyWithImpl(
      _$LearnImpl _value, $Res Function(_$LearnImpl) _then)
      : super(_value, _then);

  /// Create a copy of Learn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentName = null,
    Object? studentId = null,
    Object? department = null,
    Object? grade = null,
    Object? parentName = null,
    Object? parentPhone1 = null,
    Object? dateOfJoining = null,
  }) {
    return _then(_$LearnImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      parentName: null == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
      parentPhone1: null == parentPhone1
          ? _value.parentPhone1
          : parentPhone1 // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfJoining: null == dateOfJoining
          ? _value.dateOfJoining
          : dateOfJoining // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LearnImpl implements _Learn {
  _$LearnImpl(
      {required this.id,
      required this.studentName,
      required this.studentId,
      required this.department,
      required this.grade,
      required this.parentName,
      required this.parentPhone1,
      required this.dateOfJoining});

  @override
  final String id;
  @override
  final String studentName;
  @override
  final String studentId;
  @override
  final int department;
  @override
  final int grade;
  @override
  final String parentName;
  @override
  final String parentPhone1;
  @override
  final String dateOfJoining;

  @override
  String toString() {
    return 'Learn(id: $id, studentName: $studentName, studentId: $studentId, department: $department, grade: $grade, parentName: $parentName, parentPhone1: $parentPhone1, dateOfJoining: $dateOfJoining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearnImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            (identical(other.parentPhone1, parentPhone1) ||
                other.parentPhone1 == parentPhone1) &&
            (identical(other.dateOfJoining, dateOfJoining) ||
                other.dateOfJoining == dateOfJoining));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, studentName, studentId,
      department, grade, parentName, parentPhone1, dateOfJoining);

  /// Create a copy of Learn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearnImplCopyWith<_$LearnImpl> get copyWith =>
      __$$LearnImplCopyWithImpl<_$LearnImpl>(this, _$identity);
}

abstract class _Learn implements Learn {
  factory _Learn(
      {required final String id,
      required final String studentName,
      required final String studentId,
      required final int department,
      required final int grade,
      required final String parentName,
      required final String parentPhone1,
      required final String dateOfJoining}) = _$LearnImpl;

  @override
  String get id;
  @override
  String get studentName;
  @override
  String get studentId;
  @override
  int get department;
  @override
  int get grade;
  @override
  String get parentName;
  @override
  String get parentPhone1;
  @override
  String get dateOfJoining;

  /// Create a copy of Learn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearnImplCopyWith<_$LearnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
