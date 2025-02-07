import 'package:dio/dio.dart';
import '../../../core/network/failure/failure.dart';
import '../../../domain/auth/usecases/login_use_case/login_use_case.dart';

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
}

abstract class AuthRemoteDataSource {
  Future<void> login({required LoginParams params});
}
