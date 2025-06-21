import 'dart:isolate';

import 'package:dio/dio.dart';

import '../../../core/network/failure/failure.dart';
import '../../../domain/profile/use_cases/update_profile_use_case.dart';
import '../models/profile_model.dart';
import '../models/update_profile_model.dart';

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final Dio _dio;
  const ProfileRemoteDataSourceImpl(this._dio);

  @override
  Future<ProfileModel> getProfile() async {
    try {
      final response = await _dio.get('/Profile');
      return Isolate.run<ProfileModel>(
          () => ProfileModel.fromJson(response.data));
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }

  @override
  Future<UpdateProfileModel> updateProfile(UpdateProfileParams params) async {
    try {
      final response = await _dio.put('/Profile', data: params.toJson());
      return Isolate.run<UpdateProfileModel>(
          () => UpdateProfileModel.fromJson(response.data));
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfile();
  Future<UpdateProfileModel> updateProfile(UpdateProfileParams params);
}
