// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learn_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LearnParams {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  /// Serializes this LearnParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LearnParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearnParamsCopyWith<LearnParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearnParamsCopyWith<$Res> {
  factory $LearnParamsCopyWith(
          LearnParams value, $Res Function(LearnParams) then) =
      _$LearnParamsCopyWithImpl<$Res, LearnParams>;
  @useResult
  $Res call({int page, int pageSize});
}

/// @nodoc
class _$LearnParamsCopyWithImpl<$Res, $Val extends LearnParams>
    implements $LearnParamsCopyWith<$Res> {
  _$LearnParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearnParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearnParamsImplCopyWith<$Res>
    implements $LearnParamsCopyWith<$Res> {
  factory _$$LearnParamsImplCopyWith(
          _$LearnParamsImpl value, $Res Function(_$LearnParamsImpl) then) =
      __$$LearnParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int pageSize});
}

/// @nodoc
class __$$LearnParamsImplCopyWithImpl<$Res>
    extends _$LearnParamsCopyWithImpl<$Res, _$LearnParamsImpl>
    implements _$$LearnParamsImplCopyWith<$Res> {
  __$$LearnParamsImplCopyWithImpl(
      _$LearnParamsImpl _value, $Res Function(_$LearnParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LearnParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$LearnParamsImpl(
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
class _$LearnParamsImpl extends _LearnParams {
  const _$LearnParamsImpl({this.page = 1, this.pageSize = 20}) : super._();

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;

  @override
  String toString() {
    return 'LearnParams(page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearnParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize);

  /// Create a copy of LearnParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearnParamsImplCopyWith<_$LearnParamsImpl> get copyWith =>
      __$$LearnParamsImplCopyWithImpl<_$LearnParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearnParamsImplToJson(
      this,
    );
  }
}

abstract class _LearnParams extends LearnParams {
  const factory _LearnParams({final int page, final int pageSize}) =
      _$LearnParamsImpl;
  const _LearnParams._() : super._();

  @override
  int get page;
  @override
  int get pageSize;

  /// Create a copy of LearnParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearnParamsImplCopyWith<_$LearnParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
