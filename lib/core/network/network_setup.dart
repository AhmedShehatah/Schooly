import 'dart:io';

import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../app/di/injection_container.dart';
import '../localization/localization_manager.dart';
import '../shared_preferences/prefs_keys.dart';
import '../shared_preferences/shared_prefs.dart';
import 'failure/failure.dart';

Dio createDio() {
  final dio = Dio(BaseOptions(
    baseUrl: dotenv.get('BASE_URL'),
    receiveTimeout: const Duration(seconds: 30),
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptEncodingHeader: 'gzip, deflate, br, zstd',
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.connectionHeader: 'keep-alive',
    },
  ));
  dio.interceptors.addAll([
    AwesomeDioInterceptor(),
    _CustomInterceptor(),
  ]);
  return dio;
}

class _CustomInterceptor extends Interceptor {
  final _storage = sl<SharedPrefs>();

  final _localizations = sl<LocaleCubit>().appLocalizations;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _storage.getSecuredValue(key: PrefsKeys.token);
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    options.headers['Accept-Language'] = sl<LocaleCubit>().state.languageCode;
    return handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final token = response.data['token'];
    if (token != null) {
      await _storage.saveSecuredValue(key: PrefsKeys.token, value: token);
    }
    if (response.data['message'] != null) {
      response.data = response.data['message'];
    } else if (response.data['path'] != null) {
      response.data = response.data['path'];
    } else {
      response.data = response.data['data'];
    }
    return handler.next(response);
  }

  Failure _handleBadResponse({required Response response}) {
    final statusCode = response.statusCode ?? 500;
    final isServerError = statusCode ~/ 100 == 5;
    final isUnauthorized = statusCode == 401;

    if (isServerError) {
      return Failure.server(message: _localizations.serverError);
    } else if (isUnauthorized) {
      return Failure.unauthorized(message: response.data['message']);
    } else {
      return Failure.server(message: response.data['message']);
    }
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    final failure = switch (err.type) {
      DioExceptionType.badCertificate => Failure.badCertificate(
          message: _localizations.badCertificate,
        ),
      DioExceptionType.cancel => Failure.requestCancelled(
          message: _localizations.requestCancelled,
        ),
      DioExceptionType.connectionError => Failure.noInternetConnection(
          message: _localizations.connectionError,
        ),
      DioExceptionType.connectionTimeout => Failure.connectionTimeout(
          message: _localizations.connectionTimeout,
        ),
      DioExceptionType.receiveTimeout => Failure.receiveTimeout(
          message: _localizations.receiveTimeout,
        ),
      DioExceptionType.sendTimeout => Failure.sendTimeout(
          message: _localizations.sendTimeout,
        ),
      DioExceptionType.unknown => Failure.unknown(
          message: _localizations.unknownError,
        ),
      DioExceptionType.badResponse => _handleBadResponse(
          response: err.response!,
        ),
    };
    await failure.whenOrNull<Future<void>>(unauthorized: (_) async {
      // TODO route to login screen
      // sl<AppNavigator>().offAll(LoginScreen.routeName);
      await _storage.deleteSecuredValue(key: PrefsKeys.token);
    });
    return handler.next(DioException(
      requestOptions: err.requestOptions,
      error: failure,
      message: failure.message,
    ));
  }
}
