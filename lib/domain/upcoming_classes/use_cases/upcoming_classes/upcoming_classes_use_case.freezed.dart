// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_classes_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpcomingClassesParams {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get classRoomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  ClassType get status => throw _privateConstructorUsedError;

  /// Serializes this UpcomingClassesParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpcomingClassesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpcomingClassesParamsCopyWith<UpcomingClassesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingClassesParamsCopyWith<$Res> {
  factory $UpcomingClassesParamsCopyWith(UpcomingClassesParams value,
          $Res Function(UpcomingClassesParams) then) =
      _$UpcomingClassesParamsCopyWithImpl<$Res, UpcomingClassesParams>;
  @useResult
  $Res call(
      {int page,
      int pageSize,
      @JsonKey(includeIfNull: false) String? classRoomId,
      @JsonKey(name: 'Status') ClassType status});
}

/// @nodoc
class _$UpcomingClassesParamsCopyWithImpl<$Res,
        $Val extends UpcomingClassesParams>
    implements $UpcomingClassesParamsCopyWith<$Res> {
  _$UpcomingClassesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpcomingClassesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? classRoomId = freezed,
    Object? status = null,
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
      classRoomId: freezed == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcomingClassesParamsImplCopyWith<$Res>
    implements $UpcomingClassesParamsCopyWith<$Res> {
  factory _$$UpcomingClassesParamsImplCopyWith(
          _$UpcomingClassesParamsImpl value,
          $Res Function(_$UpcomingClassesParamsImpl) then) =
      __$$UpcomingClassesParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int pageSize,
      @JsonKey(includeIfNull: false) String? classRoomId,
      @JsonKey(name: 'Status') ClassType status});
}

/// @nodoc
class __$$UpcomingClassesParamsImplCopyWithImpl<$Res>
    extends _$UpcomingClassesParamsCopyWithImpl<$Res,
        _$UpcomingClassesParamsImpl>
    implements _$$UpcomingClassesParamsImplCopyWith<$Res> {
  __$$UpcomingClassesParamsImplCopyWithImpl(_$UpcomingClassesParamsImpl _value,
      $Res Function(_$UpcomingClassesParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpcomingClassesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? classRoomId = freezed,
    Object? status = null,
  }) {
    return _then(_$UpcomingClassesParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      classRoomId: freezed == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassType,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$UpcomingClassesParamsImpl extends _UpcomingClassesParams {
  const _$UpcomingClassesParamsImpl(
      {this.page = 1,
      this.pageSize = 20,
      @JsonKey(includeIfNull: false) this.classRoomId,
      @JsonKey(name: 'Status') this.status = ClassType.upcoming})
      : super._();

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey(includeIfNull: false)
  final String? classRoomId;
  @override
  @JsonKey(name: 'Status')
  final ClassType status;

  @override
  String toString() {
    return 'UpcomingClassesParams(page: $page, pageSize: $pageSize, classRoomId: $classRoomId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingClassesParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.classRoomId, classRoomId) ||
                other.classRoomId == classRoomId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, pageSize, classRoomId, status);

  /// Create a copy of UpcomingClassesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingClassesParamsImplCopyWith<_$UpcomingClassesParamsImpl>
      get copyWith => __$$UpcomingClassesParamsImplCopyWithImpl<
          _$UpcomingClassesParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingClassesParamsImplToJson(
      this,
    );
  }
}

abstract class _UpcomingClassesParams extends UpcomingClassesParams {
  const factory _UpcomingClassesParams(
          {final int page,
          final int pageSize,
          @JsonKey(includeIfNull: false) final String? classRoomId,
          @JsonKey(name: 'Status') final ClassType status}) =
      _$UpcomingClassesParamsImpl;
  const _UpcomingClassesParams._() : super._();

  @override
  int get page;
  @override
  int get pageSize;
  @override
  @JsonKey(includeIfNull: false)
  String? get classRoomId;
  @override
  @JsonKey(name: 'Status')
  ClassType get status;

  /// Create a copy of UpcomingClassesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpcomingClassesParamsImplCopyWith<_$UpcomingClassesParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
