// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_session_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JoinSessionParams {
  String get id => throw _privateConstructorUsedError;
  File get file => throw _privateConstructorUsedError;

  /// Create a copy of JoinSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinSessionParamsCopyWith<JoinSessionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinSessionParamsCopyWith<$Res> {
  factory $JoinSessionParamsCopyWith(
          JoinSessionParams value, $Res Function(JoinSessionParams) then) =
      _$JoinSessionParamsCopyWithImpl<$Res, JoinSessionParams>;
  @useResult
  $Res call({String id, File file});
}

/// @nodoc
class _$JoinSessionParamsCopyWithImpl<$Res, $Val extends JoinSessionParams>
    implements $JoinSessionParamsCopyWith<$Res> {
  _$JoinSessionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinSessionParamsImplCopyWith<$Res>
    implements $JoinSessionParamsCopyWith<$Res> {
  factory _$$JoinSessionParamsImplCopyWith(_$JoinSessionParamsImpl value,
          $Res Function(_$JoinSessionParamsImpl) then) =
      __$$JoinSessionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, File file});
}

/// @nodoc
class __$$JoinSessionParamsImplCopyWithImpl<$Res>
    extends _$JoinSessionParamsCopyWithImpl<$Res, _$JoinSessionParamsImpl>
    implements _$$JoinSessionParamsImplCopyWith<$Res> {
  __$$JoinSessionParamsImplCopyWithImpl(_$JoinSessionParamsImpl _value,
      $Res Function(_$JoinSessionParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
  }) {
    return _then(_$JoinSessionParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$JoinSessionParamsImpl extends _JoinSessionParams {
  const _$JoinSessionParamsImpl({required this.id, required this.file})
      : super._();

  @override
  final String id;
  @override
  final File file;

  @override
  String toString() {
    return 'JoinSessionParams(id: $id, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinSessionParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, file);

  /// Create a copy of JoinSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinSessionParamsImplCopyWith<_$JoinSessionParamsImpl> get copyWith =>
      __$$JoinSessionParamsImplCopyWithImpl<_$JoinSessionParamsImpl>(
          this, _$identity);
}

abstract class _JoinSessionParams extends JoinSessionParams {
  const factory _JoinSessionParams(
      {required final String id,
      required final File file}) = _$JoinSessionParamsImpl;
  const _JoinSessionParams._() : super._();

  @override
  String get id;
  @override
  File get file;

  /// Create a copy of JoinSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinSessionParamsImplCopyWith<_$JoinSessionParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
