// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPostParams {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  String get classRoomId => throw _privateConstructorUsedError;

  /// Serializes this GetPostParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPostParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPostParamsCopyWith<GetPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostParamsCopyWith<$Res> {
  factory $GetPostParamsCopyWith(
          GetPostParams value, $Res Function(GetPostParams) then) =
      _$GetPostParamsCopyWithImpl<$Res, GetPostParams>;
  @useResult
  $Res call({int page, int pageSize, String classRoomId});
}

/// @nodoc
class _$GetPostParamsCopyWithImpl<$Res, $Val extends GetPostParams>
    implements $GetPostParamsCopyWith<$Res> {
  _$GetPostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPostParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? classRoomId = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      classRoomId: null == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostParamsImplCopyWith<$Res>
    implements $GetPostParamsCopyWith<$Res> {
  factory _$$GetPostParamsImplCopyWith(
          _$GetPostParamsImpl value, $Res Function(_$GetPostParamsImpl) then) =
      __$$GetPostParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int pageSize, String classRoomId});
}

/// @nodoc
class __$$GetPostParamsImplCopyWithImpl<$Res>
    extends _$GetPostParamsCopyWithImpl<$Res, _$GetPostParamsImpl>
    implements _$$GetPostParamsImplCopyWith<$Res> {
  __$$GetPostParamsImplCopyWithImpl(
      _$GetPostParamsImpl _value, $Res Function(_$GetPostParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPostParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? classRoomId = null,
  }) {
    return _then(_$GetPostParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      classRoomId: null == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$GetPostParamsImpl implements _GetPostParams {
  const _$GetPostParamsImpl(
      {this.page = 1, this.pageSize = 1, required this.classRoomId});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;
  @override
  final String classRoomId;

  @override
  String toString() {
    return 'GetPostParams(page: $page, pageSize: $pageSize, classRoomId: $classRoomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.classRoomId, classRoomId) ||
                other.classRoomId == classRoomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize, classRoomId);

  /// Create a copy of GetPostParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostParamsImplCopyWith<_$GetPostParamsImpl> get copyWith =>
      __$$GetPostParamsImplCopyWithImpl<_$GetPostParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPostParamsImplToJson(
      this,
    );
  }
}

abstract class _GetPostParams implements GetPostParams {
  const factory _GetPostParams(
      {final int page,
      final int pageSize,
      required final String classRoomId}) = _$GetPostParamsImpl;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  String get classRoomId;

  /// Create a copy of GetPostParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPostParamsImplCopyWith<_$GetPostParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
