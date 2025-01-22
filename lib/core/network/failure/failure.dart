import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
@immutable
class Failure with _$Failure {
  const Failure._();

  const factory Failure.badCertificate({required String message}) =
      _BadCertificate;

  const factory Failure.requestCancelled({required String message}) =
      _RequestCancelled;

  const factory Failure.connectionTimeout({required String message}) =
      _ConnectionTimeOut;

  const factory Failure.receiveTimeout({required String message}) =
      _ReceiveTimeOut;

  const factory Failure.sendTimeout({required String message}) = _SendTimeOut;

  const factory Failure.noInternetConnection({required String message}) =
      _NoInternetConnection;

  const factory Failure.unknown({required String message}) = _Unknown;

  const factory Failure.server({required String message}) = _Server;

  const factory Failure.unauthorized({required String message}) = _Unauthorized;
}
