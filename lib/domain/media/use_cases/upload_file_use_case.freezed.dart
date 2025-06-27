// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadParams {
  String get path => throw _privateConstructorUsedError;
  ProgressCallback? get onProgress => throw _privateConstructorUsedError;
  CancelToken? get cancelToken => throw _privateConstructorUsedError;

  /// Create a copy of UploadParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadParamsCopyWith<UploadParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadParamsCopyWith<$Res> {
  factory $UploadParamsCopyWith(
          UploadParams value, $Res Function(UploadParams) then) =
      _$UploadParamsCopyWithImpl<$Res, UploadParams>;
  @useResult
  $Res call(
      {String path, ProgressCallback? onProgress, CancelToken? cancelToken});
}

/// @nodoc
class _$UploadParamsCopyWithImpl<$Res, $Val extends UploadParams>
    implements $UploadParamsCopyWith<$Res> {
  _$UploadParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? onProgress = freezed,
    Object? cancelToken = freezed,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      onProgress: freezed == onProgress
          ? _value.onProgress
          : onProgress // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadParamsImplCopyWith<$Res>
    implements $UploadParamsCopyWith<$Res> {
  factory _$$UploadParamsImplCopyWith(
          _$UploadParamsImpl value, $Res Function(_$UploadParamsImpl) then) =
      __$$UploadParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path, ProgressCallback? onProgress, CancelToken? cancelToken});
}

/// @nodoc
class __$$UploadParamsImplCopyWithImpl<$Res>
    extends _$UploadParamsCopyWithImpl<$Res, _$UploadParamsImpl>
    implements _$$UploadParamsImplCopyWith<$Res> {
  __$$UploadParamsImplCopyWithImpl(
      _$UploadParamsImpl _value, $Res Function(_$UploadParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? onProgress = freezed,
    Object? cancelToken = freezed,
  }) {
    return _then(_$UploadParamsImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      onProgress: freezed == onProgress
          ? _value.onProgress
          : onProgress // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc

class _$UploadParamsImpl extends _UploadParams {
  const _$UploadParamsImpl(
      {required this.path, this.onProgress, this.cancelToken})
      : super._();

  @override
  final String path;
  @override
  final ProgressCallback? onProgress;
  @override
  final CancelToken? cancelToken;

  @override
  String toString() {
    return 'UploadParams(path: $path, onProgress: $onProgress, cancelToken: $cancelToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadParamsImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.onProgress, onProgress) ||
                other.onProgress == onProgress) &&
            (identical(other.cancelToken, cancelToken) ||
                other.cancelToken == cancelToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, onProgress, cancelToken);

  /// Create a copy of UploadParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadParamsImplCopyWith<_$UploadParamsImpl> get copyWith =>
      __$$UploadParamsImplCopyWithImpl<_$UploadParamsImpl>(this, _$identity);
}

abstract class _UploadParams extends UploadParams {
  const factory _UploadParams(
      {required final String path,
      final ProgressCallback? onProgress,
      final CancelToken? cancelToken}) = _$UploadParamsImpl;
  const _UploadParams._() : super._();

  @override
  String get path;
  @override
  ProgressCallback? get onProgress;
  @override
  CancelToken? get cancelToken;

  /// Create a copy of UploadParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadParamsImplCopyWith<_$UploadParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
