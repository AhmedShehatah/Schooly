// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_comment_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCommentParams {
  String get postId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  /// Create a copy of GetCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCommentParamsCopyWith<GetCommentParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommentParamsCopyWith<$Res> {
  factory $GetCommentParamsCopyWith(
          GetCommentParams value, $Res Function(GetCommentParams) then) =
      _$GetCommentParamsCopyWithImpl<$Res, GetCommentParams>;
  @useResult
  $Res call({String postId, int page, int pageSize});
}

/// @nodoc
class _$GetCommentParamsCopyWithImpl<$Res, $Val extends GetCommentParams>
    implements $GetCommentParamsCopyWith<$Res> {
  _$GetCommentParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCommentParamsImplCopyWith<$Res>
    implements $GetCommentParamsCopyWith<$Res> {
  factory _$$GetCommentParamsImplCopyWith(_$GetCommentParamsImpl value,
          $Res Function(_$GetCommentParamsImpl) then) =
      __$$GetCommentParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postId, int page, int pageSize});
}

/// @nodoc
class __$$GetCommentParamsImplCopyWithImpl<$Res>
    extends _$GetCommentParamsCopyWithImpl<$Res, _$GetCommentParamsImpl>
    implements _$$GetCommentParamsImplCopyWith<$Res> {
  __$$GetCommentParamsImplCopyWithImpl(_$GetCommentParamsImpl _value,
      $Res Function(_$GetCommentParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$GetCommentParamsImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCommentParamsImpl implements _GetCommentParams {
  const _$GetCommentParamsImpl(
      {required this.postId, this.page = 1, this.pageSize = 10});

  @override
  final String postId;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;

  @override
  String toString() {
    return 'GetCommentParams(postId: $postId, page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentParamsImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, page, pageSize);

  /// Create a copy of GetCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentParamsImplCopyWith<_$GetCommentParamsImpl> get copyWith =>
      __$$GetCommentParamsImplCopyWithImpl<_$GetCommentParamsImpl>(
          this, _$identity);
}

abstract class _GetCommentParams implements GetCommentParams {
  const factory _GetCommentParams(
      {required final String postId,
      final int page,
      final int pageSize}) = _$GetCommentParamsImpl;

  @override
  String get postId;
  @override
  int get page;
  @override
  int get pageSize;

  /// Create a copy of GetCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCommentParamsImplCopyWith<_$GetCommentParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
