import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/localization/localization_manager.dart';
import '../../core/network/network_setup.dart';
import '../../core/shared_preferences/shared_prefs.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/validators.dart';
import '../../data/learn/data_sources/learn_remote_data_source.dart';
import '../../data/learn/repos/learn_repo_impl.dart';
import '../../domain/learn/repos/learn_repo.dart';
import '../../domain/learn/uses_cases/learn_use_case.dart';
import '../../presentation/learn/cubit/learn_cubit.dart';
import '../route_manager/app_router.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // startup
  sl.registerSingleton(const FlutterSecureStorage());
  sl.registerSingleton(await SharedPreferences.getInstance());
  sl.registerSingleton(SharedPrefs(sl(), sl()));
  sl.registerSingleton(LocaleCubit());
  sl.registerSingleton(createDio());
  sl.registerLazySingleton(() => AppRouter());
  sl.registerSingleton(AppTheme());
  sl.registerLazySingleton(() => Validators());

  /// cubits
  sl.registerLazySingleton(() => LearnCubit(sl()));

  /// use cases
  sl.registerLazySingleton(() => LearnUseCase(sl()));

  // repos
  sl.registerLazySingleton<LearnRepo>(() => LearnRepoImpl(sl()));

  /// remote data sources
  sl.registerLazySingleton<LearnRemoteDataSource>(
      () => LearnRemoteDataSourceImpl(sl()));
}
