// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_homework_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddHomeworkParams {
  String get lessonId => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;

  /// Serializes this AddHomeworkParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddHomeworkParamsCopyWith<AddHomeworkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddHomeworkParamsCopyWith<$Res> {
  factory $AddHomeworkParamsCopyWith(
          AddHomeworkParams value, $Res Function(AddHomeworkParams) then) =
      _$AddHomeworkParamsCopyWithImpl<$Res, AddHomeworkParams>;
  @useResult
  $Res call({String lessonId, DateTime deadline, String fileUrl});
}

/// @nodoc
class _$AddHomeworkParamsCopyWithImpl<$Res, $Val extends AddHomeworkParams>
    implements $AddHomeworkParamsCopyWith<$Res> {
  _$AddHomeworkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? deadline = null,
    Object? fileUrl = null,
  }) {
    return _then(_value.copyWith(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddHomeworkParamsImplCopyWith<$Res>
    implements $AddHomeworkParamsCopyWith<$Res> {
  factory _$$AddHomeworkParamsImplCopyWith(_$AddHomeworkParamsImpl value,
          $Res Function(_$AddHomeworkParamsImpl) then) =
      __$$AddHomeworkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lessonId, DateTime deadline, String fileUrl});
}

/// @nodoc
class __$$AddHomeworkParamsImplCopyWithImpl<$Res>
    extends _$AddHomeworkParamsCopyWithImpl<$Res, _$AddHomeworkParamsImpl>
    implements _$$AddHomeworkParamsImplCopyWith<$Res> {
  __$$AddHomeworkParamsImplCopyWithImpl(_$AddHomeworkParamsImpl _value,
      $Res Function(_$AddHomeworkParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? deadline = null,
    Object? fileUrl = null,
  }) {
    return _then(_$AddHomeworkParamsImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$AddHomeworkParamsImpl implements _AddHomeworkParams {
  const _$AddHomeworkParamsImpl(
      {required this.lessonId, required this.deadline, required this.fileUrl});

  @override
  final String lessonId;
  @override
  final DateTime deadline;
  @override
  final String fileUrl;

  @override
  String toString() {
    return 'AddHomeworkParams(lessonId: $lessonId, deadline: $deadline, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddHomeworkParamsImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lessonId, deadline, fileUrl);

  /// Create a copy of AddHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddHomeworkParamsImplCopyWith<_$AddHomeworkParamsImpl> get copyWith =>
      __$$AddHomeworkParamsImplCopyWithImpl<_$AddHomeworkParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddHomeworkParamsImplToJson(
      this,
    );
  }
}

abstract class _AddHomeworkParams implements AddHomeworkParams {
  const factory _AddHomeworkParams(
      {required final String lessonId,
      required final DateTime deadline,
      required final String fileUrl}) = _$AddHomeworkParamsImpl;

  @override
  String get lessonId;
  @override
  DateTime get deadline;
  @override
  String get fileUrl;

  /// Create a copy of AddHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddHomeworkParamsImplCopyWith<_$AddHomeworkParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
