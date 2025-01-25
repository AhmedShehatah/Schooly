// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadingStateParams params) uploading,
    required TResult Function(Failure failure) failure,
    required TResult Function() empty,
    required TResult Function(T data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadingStateParams params)? uploading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? empty,
    TResult? Function(T data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadingStateParams params)? uploading,
    TResult Function(Failure failure)? failure,
    TResult Function()? empty,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initial,
    required TResult Function(_LoadingState<T> value) loading,
    required TResult Function(_UploadingState<T> value) uploading,
    required TResult Function(_FailureState<T> value) failure,
    required TResult Function(_EmptyState<T> value) empty,
    required TResult Function(_SuccessState<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initial,
    TResult? Function(_LoadingState<T> value)? loading,
    TResult? Function(_UploadingState<T> value)? uploading,
    TResult? Function(_FailureState<T> value)? failure,
    TResult? Function(_EmptyState<T> value)? empty,
    TResult? Function(_SuccessState<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initial,
    TResult Function(_LoadingState<T> value)? loading,
    TResult Function(_UploadingState<T> value)? uploading,
    TResult Function(_FailureState<T> value)? failure,
    TResult Function(_EmptyState<T> value)? empty,
    TResult Function(_SuccessState<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<T, $Res> {
  factory $BaseStateCopyWith(
          BaseState<T> value, $Res Function(BaseState<T>) then) =
      _$BaseStateCopyWithImpl<T, $Res, BaseState<T>>;
}

/// @nodoc
class _$BaseStateCopyWithImpl<T, $Res, $Val extends BaseState<T>>
    implements $BaseStateCopyWith<T, $Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<T, $Res> {
  factory _$$InitialStateImplCopyWith(_$InitialStateImpl<T> value,
          $Res Function(_$InitialStateImpl<T>) then) =
      __$$InitialStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res, _$InitialStateImpl<T>>
    implements _$$InitialStateImplCopyWith<T, $Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl<T> _value, $Res Function(_$InitialStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl<T> extends _InitialState<T> {
  const _$InitialStateImpl() : super._();

  @override
  String toString() {
    return 'BaseState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadingStateParams params) uploading,
    required TResult Function(Failure failure) failure,
    required TResult Function() empty,
    required TResult Function(T data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadingStateParams params)? uploading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? empty,
    TResult? Function(T data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadingStateParams params)? uploading,
    TResult Function(Failure failure)? failure,
    TResult Function()? empty,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initial,
    required TResult Function(_LoadingState<T> value) loading,
    required TResult Function(_UploadingState<T> value) uploading,
    required TResult Function(_FailureState<T> value) failure,
    required TResult Function(_EmptyState<T> value) empty,
    required TResult Function(_SuccessState<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initial,
    TResult? Function(_LoadingState<T> value)? loading,
    TResult? Function(_UploadingState<T> value)? uploading,
    TResult? Function(_FailureState<T> value)? failure,
    TResult? Function(_EmptyState<T> value)? empty,
    TResult? Function(_SuccessState<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initial,
    TResult Function(_LoadingState<T> value)? loading,
    TResult Function(_UploadingState<T> value)? uploading,
    TResult Function(_FailureState<T> value)? failure,
    TResult Function(_EmptyState<T> value)? empty,
    TResult Function(_SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState<T> extends BaseState<T> {
  const factory _InitialState() = _$InitialStateImpl<T>;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<T, $Res> {
  factory _$$LoadingStateImplCopyWith(_$LoadingStateImpl<T> value,
          $Res Function(_$LoadingStateImpl<T>) then) =
      __$$LoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res, _$LoadingStateImpl<T>>
    implements _$$LoadingStateImplCopyWith<T, $Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl<T> _value, $Res Function(_$LoadingStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl<T> extends _LoadingState<T> {
  const _$LoadingStateImpl() : super._();

  @override
  String toString() {
    return 'BaseState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadingStateParams params) uploading,
    required TResult Function(Failure failure) failure,
    required TResult Function() empty,
    required TResult Function(T data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadingStateParams params)? uploading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? empty,
    TResult? Function(T data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadingStateParams params)? uploading,
    TResult Function(Failure failure)? failure,
    TResult Function()? empty,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initial,
    required TResult Function(_LoadingState<T> value) loading,
    required TResult Function(_UploadingState<T> value) uploading,
    required TResult Function(_FailureState<T> value) failure,
    required TResult Function(_EmptyState<T> value) empty,
    required TResult Function(_SuccessState<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initial,
    TResult? Function(_LoadingState<T> value)? loading,
    TResult? Function(_UploadingState<T> value)? uploading,
    TResult? Function(_FailureState<T> value)? failure,
    TResult? Function(_EmptyState<T> value)? empty,
    TResult? Function(_SuccessState<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initial,
    TResult Function(_LoadingState<T> value)? loading,
    TResult Function(_UploadingState<T> value)? uploading,
    TResult Function(_FailureState<T> value)? failure,
    TResult Function(_EmptyState<T> value)? empty,
    TResult Function(_SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState<T> extends BaseState<T> {
  const factory _LoadingState() = _$LoadingStateImpl<T>;
  const _LoadingState._() : super._();
}

/// @nodoc
abstract class _$$UploadingStateImplCopyWith<T, $Res> {
  factory _$$UploadingStateImplCopyWith(_$UploadingStateImpl<T> value,
          $Res Function(_$UploadingStateImpl<T>) then) =
      __$$UploadingStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({UploadingStateParams params});

  $UploadingStateParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$UploadingStateImplCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res, _$UploadingStateImpl<T>>
    implements _$$UploadingStateImplCopyWith<T, $Res> {
  __$$UploadingStateImplCopyWithImpl(_$UploadingStateImpl<T> _value,
      $Res Function(_$UploadingStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$UploadingStateImpl<T>(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UploadingStateParams,
    ));
  }

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UploadingStateParamsCopyWith<$Res> get params {
    return $UploadingStateParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$UploadingStateImpl<T> extends _UploadingState<T> {
  const _$UploadingStateImpl({required this.params}) : super._();

  @override
  final UploadingStateParams params;

  @override
  String toString() {
    return 'BaseState<$T>.uploading(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadingStateImpl<T> &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadingStateImplCopyWith<T, _$UploadingStateImpl<T>> get copyWith =>
      __$$UploadingStateImplCopyWithImpl<T, _$UploadingStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadingStateParams params) uploading,
    required TResult Function(Failure failure) failure,
    required TResult Function() empty,
    required TResult Function(T data) success,
  }) {
    return uploading(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadingStateParams params)? uploading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? empty,
    TResult? Function(T data)? success,
  }) {
    return uploading?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadingStateParams params)? uploading,
    TResult Function(Failure failure)? failure,
    TResult Function()? empty,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initial,
    required TResult Function(_LoadingState<T> value) loading,
    required TResult Function(_UploadingState<T> value) uploading,
    required TResult Function(_FailureState<T> value) failure,
    required TResult Function(_EmptyState<T> value) empty,
    required TResult Function(_SuccessState<T> value) success,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initial,
    TResult? Function(_LoadingState<T> value)? loading,
    TResult? Function(_UploadingState<T> value)? uploading,
    TResult? Function(_FailureState<T> value)? failure,
    TResult? Function(_EmptyState<T> value)? empty,
    TResult? Function(_SuccessState<T> value)? success,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initial,
    TResult Function(_LoadingState<T> value)? loading,
    TResult Function(_UploadingState<T> value)? uploading,
    TResult Function(_FailureState<T> value)? failure,
    TResult Function(_EmptyState<T> value)? empty,
    TResult Function(_SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class _UploadingState<T> extends BaseState<T> {
  const factory _UploadingState({required final UploadingStateParams params}) =
      _$UploadingStateImpl<T>;
  const _UploadingState._() : super._();

  UploadingStateParams get params;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadingStateImplCopyWith<T, _$UploadingStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<T, $Res> {
  factory _$$FailureStateImplCopyWith(_$FailureStateImpl<T> value,
          $Res Function(_$FailureStateImpl<T>) then) =
      __$$FailureStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res, _$FailureStateImpl<T>>
    implements _$$FailureStateImplCopyWith<T, $Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl<T> _value, $Res Function(_$FailureStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureStateImpl<T>(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureStateImpl<T> extends _FailureState<T> {
  const _$FailureStateImpl({required this.failure}) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'BaseState<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureStateImpl<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateImplCopyWith<T, _$FailureStateImpl<T>> get copyWith =>
      __$$FailureStateImplCopyWithImpl<T, _$FailureStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadingStateParams params) uploading,
    required TResult Function(Failure failure) failure,
    required TResult Function() empty,
    required TResult Function(T data) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadingStateParams params)? uploading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? empty,
    TResult? Function(T data)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadingStateParams params)? uploading,
    TResult Function(Failure failure)? failure,
    TResult Function()? empty,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initial,
    required TResult Function(_LoadingState<T> value) loading,
    required TResult Function(_UploadingState<T> value) uploading,
    required TResult Function(_FailureState<T> value) failure,
    required TResult Function(_EmptyState<T> value) empty,
    required TResult Function(_SuccessState<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initial,
    TResult? Function(_LoadingState<T> value)? loading,
    TResult? Function(_UploadingState<T> value)? uploading,
    TResult? Function(_FailureState<T> value)? failure,
    TResult? Function(_EmptyState<T> value)? empty,
    TResult? Function(_SuccessState<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initial,
    TResult Function(_LoadingState<T> value)? loading,
    TResult Function(_UploadingState<T> value)? uploading,
    TResult Function(_FailureState<T> value)? failure,
    TResult Function(_EmptyState<T> value)? empty,
    TResult Function(_SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState<T> extends BaseState<T> {
  const factory _FailureState({required final Failure failure}) =
      _$FailureStateImpl<T>;
  const _FailureState._() : super._();

  Failure get failure;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureStateImplCopyWith<T, _$FailureStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStateImplCopyWith<T, $Res> {
  factory _$$EmptyStateImplCopyWith(
          _$EmptyStateImpl<T> value, $Res Function(_$EmptyStateImpl<T>) then) =
      __$$EmptyStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyStateImplCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res, _$EmptyStateImpl<T>>
    implements _$$EmptyStateImplCopyWith<T, $Res> {
  __$$EmptyStateImplCopyWithImpl(
      _$EmptyStateImpl<T> _value, $Res Function(_$EmptyStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyStateImpl<T> extends _EmptyState<T> {
  const _$EmptyStateImpl() : super._();

  @override
  String toString() {
    return 'BaseState<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadingStateParams params) uploading,
    required TResult Function(Failure failure) failure,
    required TResult Function() empty,
    required TResult Function(T data) success,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadingStateParams params)? uploading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? empty,
    TResult? Function(T data)? success,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadingStateParams params)? uploading,
    TResult Function(Failure failure)? failure,
    TResult Function()? empty,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initial,
    required TResult Function(_LoadingState<T> value) loading,
    required TResult Function(_UploadingState<T> value) uploading,
    required TResult Function(_FailureState<T> value) failure,
    required TResult Function(_EmptyState<T> value) empty,
    required TResult Function(_SuccessState<T> value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initial,
    TResult? Function(_LoadingState<T> value)? loading,
    TResult? Function(_UploadingState<T> value)? uploading,
    TResult? Function(_FailureState<T> value)? failure,
    TResult? Function(_EmptyState<T> value)? empty,
    TResult? Function(_SuccessState<T> value)? success,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initial,
    TResult Function(_LoadingState<T> value)? loading,
    TResult Function(_UploadingState<T> value)? uploading,
    TResult Function(_FailureState<T> value)? failure,
    TResult Function(_EmptyState<T> value)? empty,
    TResult Function(_SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyState<T> extends BaseState<T> {
  const factory _EmptyState() = _$EmptyStateImpl<T>;
  const _EmptyState._() : super._();
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<T, $Res> {
  factory _$$SuccessStateImplCopyWith(_$SuccessStateImpl<T> value,
          $Res Function(_$SuccessStateImpl<T>) then) =
      __$$SuccessStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res, _$SuccessStateImpl<T>>
    implements _$$SuccessStateImplCopyWith<T, $Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl<T> _value, $Res Function(_$SuccessStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessStateImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl<T> extends _SuccessState<T> {
  const _$SuccessStateImpl({required this.data}) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'BaseState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<T, _$SuccessStateImpl<T>> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<T, _$SuccessStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadingStateParams params) uploading,
    required TResult Function(Failure failure) failure,
    required TResult Function() empty,
    required TResult Function(T data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadingStateParams params)? uploading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? empty,
    TResult? Function(T data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadingStateParams params)? uploading,
    TResult Function(Failure failure)? failure,
    TResult Function()? empty,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initial,
    required TResult Function(_LoadingState<T> value) loading,
    required TResult Function(_UploadingState<T> value) uploading,
    required TResult Function(_FailureState<T> value) failure,
    required TResult Function(_EmptyState<T> value) empty,
    required TResult Function(_SuccessState<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initial,
    TResult? Function(_LoadingState<T> value)? loading,
    TResult? Function(_UploadingState<T> value)? uploading,
    TResult? Function(_FailureState<T> value)? failure,
    TResult? Function(_EmptyState<T> value)? empty,
    TResult? Function(_SuccessState<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initial,
    TResult Function(_LoadingState<T> value)? loading,
    TResult Function(_UploadingState<T> value)? uploading,
    TResult Function(_FailureState<T> value)? failure,
    TResult Function(_EmptyState<T> value)? empty,
    TResult Function(_SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState<T> extends BaseState<T> {
  const factory _SuccessState({required final T data}) = _$SuccessStateImpl<T>;
  const _SuccessState._() : super._();

  T get data;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStateImplCopyWith<T, _$SuccessStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadingStateParams {
  double get progress => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  /// Create a copy of UploadingStateParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadingStateParamsCopyWith<UploadingStateParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadingStateParamsCopyWith<$Res> {
  factory $UploadingStateParamsCopyWith(UploadingStateParams value,
          $Res Function(UploadingStateParams) then) =
      _$UploadingStateParamsCopyWithImpl<$Res, UploadingStateParams>;
  @useResult
  $Res call({double progress, String path});
}

/// @nodoc
class _$UploadingStateParamsCopyWithImpl<$Res,
        $Val extends UploadingStateParams>
    implements $UploadingStateParamsCopyWith<$Res> {
  _$UploadingStateParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadingStateParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadingStateParamsImplCopyWith<$Res>
    implements $UploadingStateParamsCopyWith<$Res> {
  factory _$$UploadingStateParamsImplCopyWith(_$UploadingStateParamsImpl value,
          $Res Function(_$UploadingStateParamsImpl) then) =
      __$$UploadingStateParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double progress, String path});
}

/// @nodoc
class __$$UploadingStateParamsImplCopyWithImpl<$Res>
    extends _$UploadingStateParamsCopyWithImpl<$Res, _$UploadingStateParamsImpl>
    implements _$$UploadingStateParamsImplCopyWith<$Res> {
  __$$UploadingStateParamsImplCopyWithImpl(_$UploadingStateParamsImpl _value,
      $Res Function(_$UploadingStateParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadingStateParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? path = null,
  }) {
    return _then(_$UploadingStateParamsImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadingStateParamsImpl implements _UploadingStateParams {
  const _$UploadingStateParamsImpl(
      {required this.progress, required this.path});

  @override
  final double progress;
  @override
  final String path;

  @override
  String toString() {
    return 'UploadingStateParams(progress: $progress, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadingStateParamsImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, path);

  /// Create a copy of UploadingStateParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadingStateParamsImplCopyWith<_$UploadingStateParamsImpl>
      get copyWith =>
          __$$UploadingStateParamsImplCopyWithImpl<_$UploadingStateParamsImpl>(
              this, _$identity);
}

abstract class _UploadingStateParams implements UploadingStateParams {
  const factory _UploadingStateParams(
      {required final double progress,
      required final String path}) = _$UploadingStateParamsImpl;

  @override
  double get progress;
  @override
  String get path;

  /// Create a copy of UploadingStateParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadingStateParamsImplCopyWith<_$UploadingStateParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
