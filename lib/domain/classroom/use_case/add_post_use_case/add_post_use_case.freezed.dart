// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_post_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddPostParams {
  String get content => throw _privateConstructorUsedError;
  String get classRoomId => throw _privateConstructorUsedError;

  /// Serializes this AddPostParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddPostParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPostParamsCopyWith<AddPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPostParamsCopyWith<$Res> {
  factory $AddPostParamsCopyWith(
          AddPostParams value, $Res Function(AddPostParams) then) =
      _$AddPostParamsCopyWithImpl<$Res, AddPostParams>;
  @useResult
  $Res call({String content, String classRoomId});
}

/// @nodoc
class _$AddPostParamsCopyWithImpl<$Res, $Val extends AddPostParams>
    implements $AddPostParamsCopyWith<$Res> {
  _$AddPostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPostParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? classRoomId = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      classRoomId: null == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPostParamsImplCopyWith<$Res>
    implements $AddPostParamsCopyWith<$Res> {
  factory _$$AddPostParamsImplCopyWith(
          _$AddPostParamsImpl value, $Res Function(_$AddPostParamsImpl) then) =
      __$$AddPostParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String classRoomId});
}

/// @nodoc
class __$$AddPostParamsImplCopyWithImpl<$Res>
    extends _$AddPostParamsCopyWithImpl<$Res, _$AddPostParamsImpl>
    implements _$$AddPostParamsImplCopyWith<$Res> {
  __$$AddPostParamsImplCopyWithImpl(
      _$AddPostParamsImpl _value, $Res Function(_$AddPostParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddPostParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? classRoomId = null,
  }) {
    return _then(_$AddPostParamsImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      classRoomId: null == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$AddPostParamsImpl implements _AddPostParams {
  const _$AddPostParamsImpl({required this.content, required this.classRoomId});

  @override
  final String content;
  @override
  final String classRoomId;

  @override
  String toString() {
    return 'AddPostParams(content: $content, classRoomId: $classRoomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPostParamsImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.classRoomId, classRoomId) ||
                other.classRoomId == classRoomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, classRoomId);

  /// Create a copy of AddPostParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPostParamsImplCopyWith<_$AddPostParamsImpl> get copyWith =>
      __$$AddPostParamsImplCopyWithImpl<_$AddPostParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPostParamsImplToJson(
      this,
    );
  }
}

abstract class _AddPostParams implements AddPostParams {
  const factory _AddPostParams(
      {required final String content,
      required final String classRoomId}) = _$AddPostParamsImpl;

  @override
  String get content;
  @override
  String get classRoomId;

  /// Create a copy of AddPostParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPostParamsImplCopyWith<_$AddPostParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
