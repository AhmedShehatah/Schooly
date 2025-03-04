import 'package:dio/dio.dart';
import '../../../core/network/failure/failure.dart';
import '../../../domain/auth/use_cases/forget_password_use_case/forget_password_use_case.dart';
import '../../../domain/auth/use_cases/login_use_case/login_use_case.dart';
import '../../../domain/auth/use_cases/reset_password_use_case/reset_password_use_case.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;
  AuthRemoteDataSourceImpl(this._dio);
  @override
  Future<void> login({required LoginParams params}) async {
    try {
      await _dio.post('/auth/login', data: params.toJson());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<void> forgetPassword({required ForgetPasswordParams params}) async {
    try {
      await _dio.post('/auth/forget-password', data: params.toJson());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<void> resetPassword({required ResetPasswordParams params}) async {
    try {
      await _dio.post('/auth/reset-password', data: params.toJson());
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}

abstract class AuthRemoteDataSource {
  Future<void> login({required LoginParams params});
  Future<void> resetPassword({required ResetPasswordParams params});
  Future<void> forgetPassword({required ForgetPasswordParams params});
}
