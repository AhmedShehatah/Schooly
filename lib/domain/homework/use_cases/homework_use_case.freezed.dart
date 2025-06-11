// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeworkParams {
  @JsonKey(name: 'Page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'PageSize')
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClassRoomId')
  String get classRoomId => throw _privateConstructorUsedError;

  /// Serializes this HomeworkParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkParamsCopyWith<HomeworkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkParamsCopyWith<$Res> {
  factory $HomeworkParamsCopyWith(
          HomeworkParams value, $Res Function(HomeworkParams) then) =
      _$HomeworkParamsCopyWithImpl<$Res, HomeworkParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Page') int page,
      @JsonKey(name: 'PageSize') int pageSize,
      @JsonKey(name: 'ClassRoomId') String classRoomId});
}

/// @nodoc
class _$HomeworkParamsCopyWithImpl<$Res, $Val extends HomeworkParams>
    implements $HomeworkParamsCopyWith<$Res> {
  _$HomeworkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworkParams
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
abstract class _$$HomeworkParamsImplCopyWith<$Res>
    implements $HomeworkParamsCopyWith<$Res> {
  factory _$$HomeworkParamsImplCopyWith(_$HomeworkParamsImpl value,
          $Res Function(_$HomeworkParamsImpl) then) =
      __$$HomeworkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Page') int page,
      @JsonKey(name: 'PageSize') int pageSize,
      @JsonKey(name: 'ClassRoomId') String classRoomId});
}

/// @nodoc
class __$$HomeworkParamsImplCopyWithImpl<$Res>
    extends _$HomeworkParamsCopyWithImpl<$Res, _$HomeworkParamsImpl>
    implements _$$HomeworkParamsImplCopyWith<$Res> {
  __$$HomeworkParamsImplCopyWithImpl(
      _$HomeworkParamsImpl _value, $Res Function(_$HomeworkParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? classRoomId = null,
  }) {
    return _then(_$HomeworkParamsImpl(
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
class _$HomeworkParamsImpl extends _HomeworkParams {
  const _$HomeworkParamsImpl(
      {@JsonKey(name: 'Page') this.page = 1,
      @JsonKey(name: 'PageSize') this.pageSize = 20,
      @JsonKey(name: 'ClassRoomId') required this.classRoomId})
      : super._();

  @override
  @JsonKey(name: 'Page')
  final int page;
  @override
  @JsonKey(name: 'PageSize')
  final int pageSize;
  @override
  @JsonKey(name: 'ClassRoomId')
  final String classRoomId;

  @override
  String toString() {
    return 'HomeworkParams(page: $page, pageSize: $pageSize, classRoomId: $classRoomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.classRoomId, classRoomId) ||
                other.classRoomId == classRoomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize, classRoomId);

  /// Create a copy of HomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkParamsImplCopyWith<_$HomeworkParamsImpl> get copyWith =>
      __$$HomeworkParamsImplCopyWithImpl<_$HomeworkParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkParamsImplToJson(
      this,
    );
  }
}

abstract class _HomeworkParams extends HomeworkParams {
  const factory _HomeworkParams(
          {@JsonKey(name: 'Page') final int page,
          @JsonKey(name: 'PageSize') final int pageSize,
          @JsonKey(name: 'ClassRoomId') required final String classRoomId}) =
      _$HomeworkParamsImpl;
  const _HomeworkParams._() : super._();

  @override
  @JsonKey(name: 'Page')
  int get page;
  @override
  @JsonKey(name: 'PageSize')
  int get pageSize;
  @override
  @JsonKey(name: 'ClassRoomId')
  String get classRoomId;

  /// Create a copy of HomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkParamsImplCopyWith<_$HomeworkParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
