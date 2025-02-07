import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/localization/localization_manager.dart';
import '../../core/network/network_setup.dart';
import '../../core/shared_preferences/shared_prefs.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/validators.dart';
import '../../data/auth/remote/auth_remote_data_source.dart';
import '../../data/auth/repo/auth_repo_impl.dart';
import '../../domain/auth/repo/auth_repo.dart';
import '../../domain/auth/use_cases/login_use_case/login_use_case.dart';
import '../../presentation/auth/login/cubit/login_cubit.dart';
import '../route_manager/app_router.dart';

final sl = GetIt.instance;

Future<void> init() async {
// cubits
  sl.registerLazySingleton(() => LoginCubit(sl()));

  //! useCases

  sl.registerLazySingleton(() => LoginUseCase(sl()));

  //! repos
  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()));

  //! data sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(sl()));

  sl.registerSingleton(const FlutterSecureStorage());
  sl.registerSingleton(await SharedPreferences.getInstance());
  sl.registerSingleton(SharedPrefs(sl(), sl()));
  sl.registerSingleton(LocaleCubit());
  sl.registerSingleton(createDio());
  sl.registerLazySingleton(() => AppRouter());
  sl.registerSingleton(AppTheme());
  sl.registerLazySingleton(() => Validators());
}
