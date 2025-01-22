// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadCertificateImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$BadCertificateImplCopyWith(_$BadCertificateImpl value,
          $Res Function(_$BadCertificateImpl) then) =
      __$$BadCertificateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadCertificateImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BadCertificateImpl>
    implements _$$BadCertificateImplCopyWith<$Res> {
  __$$BadCertificateImplCopyWithImpl(
      _$BadCertificateImpl _value, $Res Function(_$BadCertificateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BadCertificateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadCertificateImpl extends _BadCertificate {
  const _$BadCertificateImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.badCertificate(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadCertificateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadCertificateImplCopyWith<_$BadCertificateImpl> get copyWith =>
      __$$BadCertificateImplCopyWithImpl<_$BadCertificateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) {
    return badCertificate(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) {
    return badCertificate?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return badCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return badCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate(this);
    }
    return orElse();
  }
}

abstract class _BadCertificate extends Failure {
  const factory _BadCertificate({required final String message}) =
      _$BadCertificateImpl;
  const _BadCertificate._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadCertificateImplCopyWith<_$BadCertificateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCancelledImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$RequestCancelledImplCopyWith(_$RequestCancelledImpl value,
          $Res Function(_$RequestCancelledImpl) then) =
      __$$RequestCancelledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RequestCancelledImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$RequestCancelledImpl>
    implements _$$RequestCancelledImplCopyWith<$Res> {
  __$$RequestCancelledImplCopyWithImpl(_$RequestCancelledImpl _value,
      $Res Function(_$RequestCancelledImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RequestCancelledImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestCancelledImpl extends _RequestCancelled {
  const _$RequestCancelledImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.requestCancelled(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCancelledImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCancelledImplCopyWith<_$RequestCancelledImpl> get copyWith =>
      __$$RequestCancelledImplCopyWithImpl<_$RequestCancelledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) {
    return requestCancelled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) {
    return requestCancelled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class _RequestCancelled extends Failure {
  const factory _RequestCancelled({required final String message}) =
      _$RequestCancelledImpl;
  const _RequestCancelled._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCancelledImplCopyWith<_$RequestCancelledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionTimeOutImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConnectionTimeOutImplCopyWith(_$ConnectionTimeOutImpl value,
          $Res Function(_$ConnectionTimeOutImpl) then) =
      __$$ConnectionTimeOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionTimeOutImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionTimeOutImpl>
    implements _$$ConnectionTimeOutImplCopyWith<$Res> {
  __$$ConnectionTimeOutImplCopyWithImpl(_$ConnectionTimeOutImpl _value,
      $Res Function(_$ConnectionTimeOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionTimeOutImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionTimeOutImpl extends _ConnectionTimeOut {
  const _$ConnectionTimeOutImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.connectionTimeout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeOutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionTimeOutImplCopyWith<_$ConnectionTimeOutImpl> get copyWith =>
      __$$ConnectionTimeOutImplCopyWithImpl<_$ConnectionTimeOutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) {
    return connectionTimeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) {
    return connectionTimeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return connectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(this);
    }
    return orElse();
  }
}

abstract class _ConnectionTimeOut extends Failure {
  const factory _ConnectionTimeOut({required final String message}) =
      _$ConnectionTimeOutImpl;
  const _ConnectionTimeOut._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionTimeOutImplCopyWith<_$ConnectionTimeOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveTimeOutImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ReceiveTimeOutImplCopyWith(_$ReceiveTimeOutImpl value,
          $Res Function(_$ReceiveTimeOutImpl) then) =
      __$$ReceiveTimeOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ReceiveTimeOutImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ReceiveTimeOutImpl>
    implements _$$ReceiveTimeOutImplCopyWith<$Res> {
  __$$ReceiveTimeOutImplCopyWithImpl(
      _$ReceiveTimeOutImpl _value, $Res Function(_$ReceiveTimeOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ReceiveTimeOutImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReceiveTimeOutImpl extends _ReceiveTimeOut {
  const _$ReceiveTimeOutImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.receiveTimeout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveTimeOutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveTimeOutImplCopyWith<_$ReceiveTimeOutImpl> get copyWith =>
      __$$ReceiveTimeOutImplCopyWithImpl<_$ReceiveTimeOutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) {
    return receiveTimeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) {
    return receiveTimeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }
}

abstract class _ReceiveTimeOut extends Failure {
  const factory _ReceiveTimeOut({required final String message}) =
      _$ReceiveTimeOutImpl;
  const _ReceiveTimeOut._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiveTimeOutImplCopyWith<_$ReceiveTimeOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTimeOutImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SendTimeOutImplCopyWith(
          _$SendTimeOutImpl value, $Res Function(_$SendTimeOutImpl) then) =
      __$$SendTimeOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendTimeOutImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SendTimeOutImpl>
    implements _$$SendTimeOutImplCopyWith<$Res> {
  __$$SendTimeOutImplCopyWithImpl(
      _$SendTimeOutImpl _value, $Res Function(_$SendTimeOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendTimeOutImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendTimeOutImpl extends _SendTimeOut {
  const _$SendTimeOutImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.sendTimeout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTimeOutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTimeOutImplCopyWith<_$SendTimeOutImpl> get copyWith =>
      __$$SendTimeOutImplCopyWithImpl<_$SendTimeOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) {
    return sendTimeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) {
    return sendTimeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class _SendTimeOut extends Failure {
  const factory _SendTimeOut({required final String message}) =
      _$SendTimeOutImpl;
  const _SendTimeOut._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendTimeOutImplCopyWith<_$SendTimeOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetConnectionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NoInternetConnectionImplCopyWith(_$NoInternetConnectionImpl value,
          $Res Function(_$NoInternetConnectionImpl) then) =
      __$$NoInternetConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoInternetConnectionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoInternetConnectionImpl>
    implements _$$NoInternetConnectionImplCopyWith<$Res> {
  __$$NoInternetConnectionImplCopyWithImpl(_$NoInternetConnectionImpl _value,
      $Res Function(_$NoInternetConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoInternetConnectionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoInternetConnectionImpl extends _NoInternetConnection {
  const _$NoInternetConnectionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.noInternetConnection(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnectionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetConnectionImplCopyWith<_$NoInternetConnectionImpl>
      get copyWith =>
          __$$NoInternetConnectionImplCopyWithImpl<_$NoInternetConnectionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) {
    return noInternetConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) {
    return noInternetConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection extends Failure {
  const factory _NoInternetConnection({required final String message}) =
      _$NoInternetConnectionImpl;
  const _NoInternetConnection._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoInternetConnectionImplCopyWith<_$NoInternetConnectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownImpl extends _Unknown {
  const _$UnknownImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown extends Failure {
  const factory _Unknown({required final String message}) = _$UnknownImpl;
  const _Unknown._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerImpl extends _Server {
  const _$ServerImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      __$$ServerImplCopyWithImpl<_$ServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server extends Failure {
  const factory _Server({required final String message}) = _$ServerImpl;
  const _Server._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnauthorizedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl extends _Unauthorized {
  const _$UnauthorizedImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) requestCancelled,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String message) receiveTimeout,
    required TResult Function(String message) sendTimeout,
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) unknown,
    required TResult Function(String message) server,
    required TResult Function(String message) unauthorized,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? requestCancelled,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String message)? receiveTimeout,
    TResult? Function(String message)? sendTimeout,
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unauthorized,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? requestCancelled,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String message)? receiveTimeout,
    TResult Function(String message)? sendTimeout,
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? unknown,
    TResult Function(String message)? server,
    TResult Function(String message)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_RequestCancelled value) requestCancelled,
    required TResult Function(_ConnectionTimeOut value) connectionTimeout,
    required TResult Function(_ReceiveTimeOut value) receiveTimeout,
    required TResult Function(_SendTimeOut value) sendTimeout,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_RequestCancelled value)? requestCancelled,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult? Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult? Function(_SendTimeOut value)? sendTimeout,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_RequestCancelled value)? requestCancelled,
    TResult Function(_ConnectionTimeOut value)? connectionTimeout,
    TResult Function(_ReceiveTimeOut value)? receiveTimeout,
    TResult Function(_SendTimeOut value)? sendTimeout,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized extends Failure {
  const factory _Unauthorized({required final String message}) =
      _$UnauthorizedImpl;
  const _Unauthorized._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
