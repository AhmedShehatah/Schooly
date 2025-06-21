// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_file_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadParams {
  String get url => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  bool get isClosable => throw _privateConstructorUsedError;
  ProgressCallback? get onProgress => throw _privateConstructorUsedError;

  /// Create a copy of DownloadParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadParamsCopyWith<DownloadParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadParamsCopyWith<$Res> {
  factory $DownloadParamsCopyWith(
          DownloadParams value, $Res Function(DownloadParams) then) =
      _$DownloadParamsCopyWithImpl<$Res, DownloadParams>;
  @useResult
  $Res call(
      {String url,
      String fileName,
      bool isClosable,
      ProgressCallback? onProgress});
}

/// @nodoc
class _$DownloadParamsCopyWithImpl<$Res, $Val extends DownloadParams>
    implements $DownloadParamsCopyWith<$Res> {
  _$DownloadParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? fileName = null,
    Object? isClosable = null,
    Object? onProgress = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      isClosable: null == isClosable
          ? _value.isClosable
          : isClosable // ignore: cast_nullable_to_non_nullable
              as bool,
      onProgress: freezed == onProgress
          ? _value.onProgress
          : onProgress // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadParamsImplCopyWith<$Res>
    implements $DownloadParamsCopyWith<$Res> {
  factory _$$DownloadParamsImplCopyWith(_$DownloadParamsImpl value,
          $Res Function(_$DownloadParamsImpl) then) =
      __$$DownloadParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String fileName,
      bool isClosable,
      ProgressCallback? onProgress});
}

/// @nodoc
class __$$DownloadParamsImplCopyWithImpl<$Res>
    extends _$DownloadParamsCopyWithImpl<$Res, _$DownloadParamsImpl>
    implements _$$DownloadParamsImplCopyWith<$Res> {
  __$$DownloadParamsImplCopyWithImpl(
      _$DownloadParamsImpl _value, $Res Function(_$DownloadParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? fileName = null,
    Object? isClosable = null,
    Object? onProgress = freezed,
  }) {
    return _then(_$DownloadParamsImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      isClosable: null == isClosable
          ? _value.isClosable
          : isClosable // ignore: cast_nullable_to_non_nullable
              as bool,
      onProgress: freezed == onProgress
          ? _value.onProgress
          : onProgress // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
    ));
  }
}

/// @nodoc

class _$DownloadParamsImpl extends _DownloadParams {
  const _$DownloadParamsImpl(
      {required this.url,
      required this.fileName,
      this.isClosable = false,
      this.onProgress})
      : super._();

  @override
  final String url;
  @override
  final String fileName;
  @override
  @JsonKey()
  final bool isClosable;
  @override
  final ProgressCallback? onProgress;

  @override
  String toString() {
    return 'DownloadParams(url: $url, fileName: $fileName, isClosable: $isClosable, onProgress: $onProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadParamsImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.isClosable, isClosable) ||
                other.isClosable == isClosable) &&
            (identical(other.onProgress, onProgress) ||
                other.onProgress == onProgress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, url, fileName, isClosable, onProgress);

  /// Create a copy of DownloadParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadParamsImplCopyWith<_$DownloadParamsImpl> get copyWith =>
      __$$DownloadParamsImplCopyWithImpl<_$DownloadParamsImpl>(
          this, _$identity);
}

abstract class _DownloadParams extends DownloadParams {
  const factory _DownloadParams(
      {required final String url,
      required final String fileName,
      final bool isClosable,
      final ProgressCallback? onProgress}) = _$DownloadParamsImpl;
  const _DownloadParams._() : super._();

  @override
  String get url;
  @override
  String get fileName;
  @override
  bool get isClosable;
  @override
  ProgressCallback? get onProgress;

  /// Create a copy of DownloadParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadParamsImplCopyWith<_$DownloadParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
