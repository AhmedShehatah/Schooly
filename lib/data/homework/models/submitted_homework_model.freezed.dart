// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submitted_homework_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubmittedHomeworkModel _$SubmittedHomeworkModelFromJson(
    Map<String, dynamic> json) {
  return _SubmittedHomeworkModel.fromJson(json);
}

/// @nodoc
mixin _$SubmittedHomeworkModel {
  String get studentId => throw _privateConstructorUsedError;
  String get studentName => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  DateTime get dateline => throw _privateConstructorUsedError;
  DateTime get submittedDate => throw _privateConstructorUsedError;

  /// Serializes this SubmittedHomeworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmittedHomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmittedHomeworkModelCopyWith<SubmittedHomeworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmittedHomeworkModelCopyWith<$Res> {
  factory $SubmittedHomeworkModelCopyWith(SubmittedHomeworkModel value,
          $Res Function(SubmittedHomeworkModel) then) =
      _$SubmittedHomeworkModelCopyWithImpl<$Res, SubmittedHomeworkModel>;
  @useResult
  $Res call(
      {String studentId,
      String studentName,
      String fileUrl,
      String fileName,
      DateTime dateline,
      DateTime submittedDate});
}

/// @nodoc
class _$SubmittedHomeworkModelCopyWithImpl<$Res,
        $Val extends SubmittedHomeworkModel>
    implements $SubmittedHomeworkModelCopyWith<$Res> {
  _$SubmittedHomeworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmittedHomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentName = null,
    Object? fileUrl = null,
    Object? fileName = null,
    Object? dateline = null,
    Object? submittedDate = null,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      dateline: null == dateline
          ? _value.dateline
          : dateline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submittedDate: null == submittedDate
          ? _value.submittedDate
          : submittedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmittedHomeworkModelImplCopyWith<$Res>
    implements $SubmittedHomeworkModelCopyWith<$Res> {
  factory _$$SubmittedHomeworkModelImplCopyWith(
          _$SubmittedHomeworkModelImpl value,
          $Res Function(_$SubmittedHomeworkModelImpl) then) =
      __$$SubmittedHomeworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String studentId,
      String studentName,
      String fileUrl,
      String fileName,
      DateTime dateline,
      DateTime submittedDate});
}

/// @nodoc
class __$$SubmittedHomeworkModelImplCopyWithImpl<$Res>
    extends _$SubmittedHomeworkModelCopyWithImpl<$Res,
        _$SubmittedHomeworkModelImpl>
    implements _$$SubmittedHomeworkModelImplCopyWith<$Res> {
  __$$SubmittedHomeworkModelImplCopyWithImpl(
      _$SubmittedHomeworkModelImpl _value,
      $Res Function(_$SubmittedHomeworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmittedHomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentName = null,
    Object? fileUrl = null,
    Object? fileName = null,
    Object? dateline = null,
    Object? submittedDate = null,
  }) {
    return _then(_$SubmittedHomeworkModelImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      dateline: null == dateline
          ? _value.dateline
          : dateline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submittedDate: null == submittedDate
          ? _value.submittedDate
          : submittedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmittedHomeworkModelImpl extends _SubmittedHomeworkModel {
  const _$SubmittedHomeworkModelImpl(
      {required this.studentId,
      required this.studentName,
      required this.fileUrl,
      required this.fileName,
      required this.dateline,
      required this.submittedDate})
      : super._();

  factory _$SubmittedHomeworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmittedHomeworkModelImplFromJson(json);

  @override
  final String studentId;
  @override
  final String studentName;
  @override
  final String fileUrl;
  @override
  final String fileName;
  @override
  final DateTime dateline;
  @override
  final DateTime submittedDate;

  @override
  String toString() {
    return 'SubmittedHomeworkModel(studentId: $studentId, studentName: $studentName, fileUrl: $fileUrl, fileName: $fileName, dateline: $dateline, submittedDate: $submittedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmittedHomeworkModelImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.dateline, dateline) ||
                other.dateline == dateline) &&
            (identical(other.submittedDate, submittedDate) ||
                other.submittedDate == submittedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, studentName, fileUrl,
      fileName, dateline, submittedDate);

  /// Create a copy of SubmittedHomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmittedHomeworkModelImplCopyWith<_$SubmittedHomeworkModelImpl>
      get copyWith => __$$SubmittedHomeworkModelImplCopyWithImpl<
          _$SubmittedHomeworkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmittedHomeworkModelImplToJson(
      this,
    );
  }
}

abstract class _SubmittedHomeworkModel extends SubmittedHomeworkModel {
  const factory _SubmittedHomeworkModel(
      {required final String studentId,
      required final String studentName,
      required final String fileUrl,
      required final String fileName,
      required final DateTime dateline,
      required final DateTime submittedDate}) = _$SubmittedHomeworkModelImpl;
  const _SubmittedHomeworkModel._() : super._();

  factory _SubmittedHomeworkModel.fromJson(Map<String, dynamic> json) =
      _$SubmittedHomeworkModelImpl.fromJson;

  @override
  String get studentId;
  @override
  String get studentName;
  @override
  String get fileUrl;
  @override
  String get fileName;
  @override
  DateTime get dateline;
  @override
  DateTime get submittedDate;

  /// Create a copy of SubmittedHomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmittedHomeworkModelImplCopyWith<_$SubmittedHomeworkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
