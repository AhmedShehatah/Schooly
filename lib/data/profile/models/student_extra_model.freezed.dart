// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_extra_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentExtraModel _$StudentExtraModelFromJson(Map<String, dynamic> json) {
  return _StudentExtraModel.fromJson(json);
}

/// @nodoc
mixin _$StudentExtraModel {
  String? get parent => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  DateTime get dateOfJoining => throw _privateConstructorUsedError;
  int get department => throw _privateConstructorUsedError;
  int get grade => throw _privateConstructorUsedError;

  /// Serializes this StudentExtraModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentExtraModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentExtraModelCopyWith<StudentExtraModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentExtraModelCopyWith<$Res> {
  factory $StudentExtraModelCopyWith(
          StudentExtraModel value, $Res Function(StudentExtraModel) then) =
      _$StudentExtraModelCopyWithImpl<$Res, StudentExtraModel>;
  @useResult
  $Res call(
      {String? parent,
      String address,
      DateTime dateOfJoining,
      int department,
      int grade});
}

/// @nodoc
class _$StudentExtraModelCopyWithImpl<$Res, $Val extends StudentExtraModel>
    implements $StudentExtraModelCopyWith<$Res> {
  _$StudentExtraModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentExtraModel
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
abstract class _$$StudentExtraModelImplCopyWith<$Res>
    implements $StudentExtraModelCopyWith<$Res> {
  factory _$$StudentExtraModelImplCopyWith(_$StudentExtraModelImpl value,
          $Res Function(_$StudentExtraModelImpl) then) =
      __$$StudentExtraModelImplCopyWithImpl<$Res>;
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
class __$$StudentExtraModelImplCopyWithImpl<$Res>
    extends _$StudentExtraModelCopyWithImpl<$Res, _$StudentExtraModelImpl>
    implements _$$StudentExtraModelImplCopyWith<$Res> {
  __$$StudentExtraModelImplCopyWithImpl(_$StudentExtraModelImpl _value,
      $Res Function(_$StudentExtraModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentExtraModel
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
    return _then(_$StudentExtraModelImpl(
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
@JsonSerializable()
class _$StudentExtraModelImpl implements _StudentExtraModel {
  const _$StudentExtraModelImpl(
      {this.parent,
      required this.address,
      required this.dateOfJoining,
      required this.department,
      required this.grade});

  factory _$StudentExtraModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentExtraModelImplFromJson(json);

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
    return 'StudentExtraModel(parent: $parent, address: $address, dateOfJoining: $dateOfJoining, department: $department, grade: $grade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentExtraModelImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.dateOfJoining, dateOfJoining) ||
                other.dateOfJoining == dateOfJoining) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, parent, address, dateOfJoining, department, grade);

  /// Create a copy of StudentExtraModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentExtraModelImplCopyWith<_$StudentExtraModelImpl> get copyWith =>
      __$$StudentExtraModelImplCopyWithImpl<_$StudentExtraModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentExtraModelImplToJson(
      this,
    );
  }
}

abstract class _StudentExtraModel implements StudentExtraModel {
  const factory _StudentExtraModel(
      {final String? parent,
      required final String address,
      required final DateTime dateOfJoining,
      required final int department,
      required final int grade}) = _$StudentExtraModelImpl;

  factory _StudentExtraModel.fromJson(Map<String, dynamic> json) =
      _$StudentExtraModelImpl.fromJson;

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

  /// Create a copy of StudentExtraModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentExtraModelImplCopyWith<_$StudentExtraModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
