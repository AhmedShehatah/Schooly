// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_lessons_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetLessonsParams {
  String get classRoomId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  /// Serializes this GetLessonsParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetLessonsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetLessonsParamsCopyWith<GetLessonsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLessonsParamsCopyWith<$Res> {
  factory $GetLessonsParamsCopyWith(
          GetLessonsParams value, $Res Function(GetLessonsParams) then) =
      _$GetLessonsParamsCopyWithImpl<$Res, GetLessonsParams>;
  @useResult
  $Res call({String classRoomId, int page, int pageSize});
}

/// @nodoc
class _$GetLessonsParamsCopyWithImpl<$Res, $Val extends GetLessonsParams>
    implements $GetLessonsParamsCopyWith<$Res> {
  _$GetLessonsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetLessonsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classRoomId = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      classRoomId: null == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GetLessonsParamsImplCopyWith<$Res>
    implements $GetLessonsParamsCopyWith<$Res> {
  factory _$$GetLessonsParamsImplCopyWith(_$GetLessonsParamsImpl value,
          $Res Function(_$GetLessonsParamsImpl) then) =
      __$$GetLessonsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String classRoomId, int page, int pageSize});
}

/// @nodoc
class __$$GetLessonsParamsImplCopyWithImpl<$Res>
    extends _$GetLessonsParamsCopyWithImpl<$Res, _$GetLessonsParamsImpl>
    implements _$$GetLessonsParamsImplCopyWith<$Res> {
  __$$GetLessonsParamsImplCopyWithImpl(_$GetLessonsParamsImpl _value,
      $Res Function(_$GetLessonsParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetLessonsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classRoomId = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$GetLessonsParamsImpl(
      classRoomId: null == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable(createFactory: false)
class _$GetLessonsParamsImpl implements _GetLessonsParams {
  const _$GetLessonsParamsImpl(
      {required this.classRoomId, this.page = 1, this.pageSize = 300});

  @override
  final String classRoomId;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;

  @override
  String toString() {
    return 'GetLessonsParams(classRoomId: $classRoomId, page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLessonsParamsImpl &&
            (identical(other.classRoomId, classRoomId) ||
                other.classRoomId == classRoomId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, classRoomId, page, pageSize);

  /// Create a copy of GetLessonsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLessonsParamsImplCopyWith<_$GetLessonsParamsImpl> get copyWith =>
      __$$GetLessonsParamsImplCopyWithImpl<_$GetLessonsParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetLessonsParamsImplToJson(
      this,
    );
  }
}

abstract class _GetLessonsParams implements GetLessonsParams {
  const factory _GetLessonsParams(
      {required final String classRoomId,
      final int page,
      final int pageSize}) = _$GetLessonsParamsImpl;

  @override
  String get classRoomId;
  @override
  int get page;
  @override
  int get pageSize;

  /// Create a copy of GetLessonsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLessonsParamsImplCopyWith<_$GetLessonsParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
