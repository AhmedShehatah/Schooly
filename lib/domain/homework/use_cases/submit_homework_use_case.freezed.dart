// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_homework_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubmitHomeworkParams {
  String get homeWorkId => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;

  /// Serializes this SubmitHomeworkParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmitHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitHomeworkParamsCopyWith<SubmitHomeworkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitHomeworkParamsCopyWith<$Res> {
  factory $SubmitHomeworkParamsCopyWith(SubmitHomeworkParams value,
          $Res Function(SubmitHomeworkParams) then) =
      _$SubmitHomeworkParamsCopyWithImpl<$Res, SubmitHomeworkParams>;
  @useResult
  $Res call({String homeWorkId, String fileUrl});
}

/// @nodoc
class _$SubmitHomeworkParamsCopyWithImpl<$Res,
        $Val extends SubmitHomeworkParams>
    implements $SubmitHomeworkParamsCopyWith<$Res> {
  _$SubmitHomeworkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkId = null,
    Object? fileUrl = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitHomeworkParamsImplCopyWith<$Res>
    implements $SubmitHomeworkParamsCopyWith<$Res> {
  factory _$$SubmitHomeworkParamsImplCopyWith(_$SubmitHomeworkParamsImpl value,
          $Res Function(_$SubmitHomeworkParamsImpl) then) =
      __$$SubmitHomeworkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String homeWorkId, String fileUrl});
}

/// @nodoc
class __$$SubmitHomeworkParamsImplCopyWithImpl<$Res>
    extends _$SubmitHomeworkParamsCopyWithImpl<$Res, _$SubmitHomeworkParamsImpl>
    implements _$$SubmitHomeworkParamsImplCopyWith<$Res> {
  __$$SubmitHomeworkParamsImplCopyWithImpl(_$SubmitHomeworkParamsImpl _value,
      $Res Function(_$SubmitHomeworkParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkId = null,
    Object? fileUrl = null,
  }) {
    return _then(_$SubmitHomeworkParamsImpl(
      homeWorkId: null == homeWorkId
          ? _value.homeWorkId
          : homeWorkId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$SubmitHomeworkParamsImpl implements _SubmitHomeworkParams {
  _$SubmitHomeworkParamsImpl({required this.homeWorkId, required this.fileUrl});

  @override
  final String homeWorkId;
  @override
  final String fileUrl;

  @override
  String toString() {
    return 'SubmitHomeworkParams(homeWorkId: $homeWorkId, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitHomeworkParamsImpl &&
            (identical(other.homeWorkId, homeWorkId) ||
                other.homeWorkId == homeWorkId) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, homeWorkId, fileUrl);

  /// Create a copy of SubmitHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitHomeworkParamsImplCopyWith<_$SubmitHomeworkParamsImpl>
      get copyWith =>
          __$$SubmitHomeworkParamsImplCopyWithImpl<_$SubmitHomeworkParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitHomeworkParamsImplToJson(
      this,
    );
  }
}

abstract class _SubmitHomeworkParams implements SubmitHomeworkParams {
  factory _SubmitHomeworkParams(
      {required final String homeWorkId,
      required final String fileUrl}) = _$SubmitHomeworkParamsImpl;

  @override
  String get homeWorkId;
  @override
  String get fileUrl;

  /// Create a copy of SubmitHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitHomeworkParamsImplCopyWith<_$SubmitHomeworkParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
