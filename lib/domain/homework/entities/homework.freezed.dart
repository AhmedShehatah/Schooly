// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Homework {
  String get homeWorkId => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get lessonTitle => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  int get totalSubmissions => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkCopyWith<Homework> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkCopyWith<$Res> {
  factory $HomeworkCopyWith(Homework value, $Res Function(Homework) then) =
      _$HomeworkCopyWithImpl<$Res, Homework>;
  @useResult
  $Res call(
      {String homeWorkId,
      String fileUrl,
      String fileName,
      String lessonTitle,
      bool isSubmitted,
      int totalSubmissions,
      DateTime deadline});
}

/// @nodoc
class _$HomeworkCopyWithImpl<$Res, $Val extends Homework>
    implements $HomeworkCopyWith<$Res> {
  _$HomeworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkId = null,
    Object? fileUrl = null,
    Object? fileName = null,
    Object? lessonTitle = null,
    Object? isSubmitted = null,
    Object? totalSubmissions = null,
    Object? deadline = null,
  }) {
    return _then(_value.copyWith(
      homeWorkId: null == homeWorkId
          ? _value.homeWorkId
          : homeWorkId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      totalSubmissions: null == totalSubmissions
          ? _value.totalSubmissions
          : totalSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeworkImplCopyWith<$Res>
    implements $HomeworkCopyWith<$Res> {
  factory _$$HomeworkImplCopyWith(
          _$HomeworkImpl value, $Res Function(_$HomeworkImpl) then) =
      __$$HomeworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String homeWorkId,
      String fileUrl,
      String fileName,
      String lessonTitle,
      bool isSubmitted,
      int totalSubmissions,
      DateTime deadline});
}

/// @nodoc
class __$$HomeworkImplCopyWithImpl<$Res>
    extends _$HomeworkCopyWithImpl<$Res, _$HomeworkImpl>
    implements _$$HomeworkImplCopyWith<$Res> {
  __$$HomeworkImplCopyWithImpl(
      _$HomeworkImpl _value, $Res Function(_$HomeworkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkId = null,
    Object? fileUrl = null,
    Object? fileName = null,
    Object? lessonTitle = null,
    Object? isSubmitted = null,
    Object? totalSubmissions = null,
    Object? deadline = null,
  }) {
    return _then(_$HomeworkImpl(
      homeWorkId: null == homeWorkId
          ? _value.homeWorkId
          : homeWorkId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      totalSubmissions: null == totalSubmissions
          ? _value.totalSubmissions
          : totalSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$HomeworkImpl extends _Homework {
  const _$HomeworkImpl(
      {required this.homeWorkId,
      required this.fileUrl,
      required this.fileName,
      required this.lessonTitle,
      this.isSubmitted = false,
      this.totalSubmissions = 0,
      required this.deadline})
      : super._();

  @override
  final String homeWorkId;
  @override
  final String fileUrl;
  @override
  final String fileName;
  @override
  final String lessonTitle;
  @override
  @JsonKey()
  final bool isSubmitted;
  @override
  @JsonKey()
  final int totalSubmissions;
  @override
  final DateTime deadline;

  @override
  String toString() {
    return 'Homework(homeWorkId: $homeWorkId, fileUrl: $fileUrl, fileName: $fileName, lessonTitle: $lessonTitle, isSubmitted: $isSubmitted, totalSubmissions: $totalSubmissions, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkImpl &&
            (identical(other.homeWorkId, homeWorkId) ||
                other.homeWorkId == homeWorkId) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.isSubmitted, isSubmitted) ||
                other.isSubmitted == isSubmitted) &&
            (identical(other.totalSubmissions, totalSubmissions) ||
                other.totalSubmissions == totalSubmissions) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeWorkId, fileUrl, fileName,
      lessonTitle, isSubmitted, totalSubmissions, deadline);

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkImplCopyWith<_$HomeworkImpl> get copyWith =>
      __$$HomeworkImplCopyWithImpl<_$HomeworkImpl>(this, _$identity);
}

abstract class _Homework extends Homework {
  const factory _Homework(
      {required final String homeWorkId,
      required final String fileUrl,
      required final String fileName,
      required final String lessonTitle,
      final bool isSubmitted,
      final int totalSubmissions,
      required final DateTime deadline}) = _$HomeworkImpl;
  const _Homework._() : super._();

  @override
  String get homeWorkId;
  @override
  String get fileUrl;
  @override
  String get fileName;
  @override
  String get lessonTitle;
  @override
  bool get isSubmitted;
  @override
  int get totalSubmissions;
  @override
  DateTime get deadline;

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkImplCopyWith<_$HomeworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
