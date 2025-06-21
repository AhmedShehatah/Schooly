// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_submitted_homework_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubmittedHomeworkParams {
  @JsonKey(name: 'homeWorkId')
  String get homeWorkId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'PageSize')
  int get pageSize => throw _privateConstructorUsedError;

  /// Serializes this SubmittedHomeworkParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmittedHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmittedHomeworkParamsCopyWith<SubmittedHomeworkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmittedHomeworkParamsCopyWith<$Res> {
  factory $SubmittedHomeworkParamsCopyWith(SubmittedHomeworkParams value,
          $Res Function(SubmittedHomeworkParams) then) =
      _$SubmittedHomeworkParamsCopyWithImpl<$Res, SubmittedHomeworkParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'homeWorkId') String homeWorkId,
      @JsonKey(name: 'Page') int page,
      @JsonKey(name: 'PageSize') int pageSize});
}

/// @nodoc
class _$SubmittedHomeworkParamsCopyWithImpl<$Res,
        $Val extends SubmittedHomeworkParams>
    implements $SubmittedHomeworkParamsCopyWith<$Res> {
  _$SubmittedHomeworkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmittedHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkId = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      homeWorkId: null == homeWorkId
          ? _value.homeWorkId
          : homeWorkId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubmittedHomeworkParamsImplCopyWith<$Res>
    implements $SubmittedHomeworkParamsCopyWith<$Res> {
  factory _$$SubmittedHomeworkParamsImplCopyWith(
          _$SubmittedHomeworkParamsImpl value,
          $Res Function(_$SubmittedHomeworkParamsImpl) then) =
      __$$SubmittedHomeworkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'homeWorkId') String homeWorkId,
      @JsonKey(name: 'Page') int page,
      @JsonKey(name: 'PageSize') int pageSize});
}

/// @nodoc
class __$$SubmittedHomeworkParamsImplCopyWithImpl<$Res>
    extends _$SubmittedHomeworkParamsCopyWithImpl<$Res,
        _$SubmittedHomeworkParamsImpl>
    implements _$$SubmittedHomeworkParamsImplCopyWith<$Res> {
  __$$SubmittedHomeworkParamsImplCopyWithImpl(
      _$SubmittedHomeworkParamsImpl _value,
      $Res Function(_$SubmittedHomeworkParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmittedHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkId = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$SubmittedHomeworkParamsImpl(
      homeWorkId: null == homeWorkId
          ? _value.homeWorkId
          : homeWorkId // ignore: cast_nullable_to_non_nullable
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
class _$SubmittedHomeworkParamsImpl extends _SubmittedHomeworkParams {
  const _$SubmittedHomeworkParamsImpl(
      {@JsonKey(name: 'homeWorkId') required this.homeWorkId,
      @JsonKey(name: 'Page') this.page = 1,
      @JsonKey(name: 'PageSize') this.pageSize = 20})
      : super._();

  @override
  @JsonKey(name: 'homeWorkId')
  final String homeWorkId;
  @override
  @JsonKey(name: 'Page')
  final int page;
  @override
  @JsonKey(name: 'PageSize')
  final int pageSize;

  @override
  String toString() {
    return 'SubmittedHomeworkParams(homeWorkId: $homeWorkId, page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmittedHomeworkParamsImpl &&
            (identical(other.homeWorkId, homeWorkId) ||
                other.homeWorkId == homeWorkId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, homeWorkId, page, pageSize);

  /// Create a copy of SubmittedHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmittedHomeworkParamsImplCopyWith<_$SubmittedHomeworkParamsImpl>
      get copyWith => __$$SubmittedHomeworkParamsImplCopyWithImpl<
          _$SubmittedHomeworkParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmittedHomeworkParamsImplToJson(
      this,
    );
  }
}

abstract class _SubmittedHomeworkParams extends SubmittedHomeworkParams {
  const factory _SubmittedHomeworkParams(
          {@JsonKey(name: 'homeWorkId') required final String homeWorkId,
          @JsonKey(name: 'Page') final int page,
          @JsonKey(name: 'PageSize') final int pageSize}) =
      _$SubmittedHomeworkParamsImpl;
  const _SubmittedHomeworkParams._() : super._();

  @override
  @JsonKey(name: 'homeWorkId')
  String get homeWorkId;
  @override
  @JsonKey(name: 'Page')
  int get page;
  @override
  @JsonKey(name: 'PageSize')
  int get pageSize;

  /// Create a copy of SubmittedHomeworkParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmittedHomeworkParamsImplCopyWith<_$SubmittedHomeworkParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
