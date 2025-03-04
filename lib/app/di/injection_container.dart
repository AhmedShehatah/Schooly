import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/localization/localization_manager.dart';
import '../../core/network/network_setup.dart';
import '../../core/shared_preferences/shared_prefs.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/validators.dart';

import '../../data/upcoming_classes/data_sources/upcoming_classes_remote_data_source.dart';
import '../../data/upcoming_classes/repos/upcoming_classes_repo_impl.dart';
import '../../domain/auth/use_cases/forget_password_use_case/forget_password_use_case.dart';
import '../../domain/auth/use_cases/reset_password_use_case/reset_password_use_case.dart';
import '../../domain/upcoming_classes/repos/upcoming_classes_repo.dart';
import '../../domain/upcoming_classes/use_cases/join_session_use_case/join_session_use_case.dart';
import '../../domain/upcoming_classes/use_cases/upcoming_classes/upcoming_classes_use_case.dart';
import '../../presentation/auth/forget_password/cubit/forget_password_cubit.dart';
import '../../presentation/auth/reset_password/cubit/reset_password_cubit.dart';
import '../../presentation/lesson_meeting/cubits/join_meeting_cubit.dart';
import '../../presentation/main/cubits/bottom_navigation_cubit.dart';
import '../../presentation/upcoming_classes/cubit/upcoming_classes_cubit.dart';

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
  sl.registerLazySingleton(() => UpcomingClassesCubit(sl()));
  sl.registerLazySingleton(() => JoinMeetingCubit(sl()));
  sl.registerLazySingleton(() => ForgetPasswordCubit(sl()));
  sl.registerLazySingleton(() => ResetPasswordCubit(sl()));

  //! useCases

  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => UpcomingClassesUseCase(sl()));
  sl.registerLazySingleton(() => JoinSessionUseCase(sl()));
  sl.registerLazySingleton(() => ForgetPasswordUseCase(sl()));
  sl.registerLazySingleton(() => ResetPasswordUseCase(sl()));

  //! repos
  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()));
  sl.registerLazySingleton<UpcomingClassesRepo>(
      () => UpcomingClassesRepoImpl(sl()));
  //! data sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<UpcomingClassesRemoteDataSource>(
      () => UpcomingClassesRemoteDataSourceImpl(sl()));

  // core
  sl.registerSingleton(BottomNavigationCubit());
  sl.registerSingleton(const FlutterSecureStorage());
  sl.registerSingleton(await SharedPreferences.getInstance());
  sl.registerSingleton(SharedPrefs(sl(), sl()));
  sl.registerSingleton(LocaleCubit());
  sl.registerSingleton(createDio());
  sl.registerLazySingleton(() => AppRouter());
  sl.registerSingleton(AppTheme());
  sl.registerLazySingleton(() => Validators());
}
