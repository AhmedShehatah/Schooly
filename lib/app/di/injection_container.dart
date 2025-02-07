import 'dart:io';
import 'dart:ui';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import '../../core/localization/app_localizations.dart';
import '../../core/network/network_setup.dart';
import '../../core/theme/palette.dart';
import '../../data/auth/remote/auth_remote_data_source.dart';
import '../../data/auth/repo/auth_repo_impl.dart';
import '../../domain/auth/repo/auth_repo.dart';
import '../../domain/auth/usecases/login_use_case/login_use_case.dart';
import '../../presentation/auth/login/cubit/login_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
// cubits
  sl.registerLazySingleton(() => LoginCubit(sl()));

  //! usecases

  sl.registerLazySingleton(() => LoginUseCase(sl()));

  //! repos
  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()));

  //! data sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(sl()));

//! core
  _initLocalizations();
  sl.registerSingleton(Palette());
  //sl.registerSingleton(AppTheme(palette: sl()));
  //sl.registerSingleton(AppNavigator());
  //! externals
  sl.registerSingleton(const FlutterSecureStorage());
  sl.registerSingleton(createDio());
  //sl.registerSingleton(
  //Validators(localizations: sl<LocaleCubit>().appLocalizations));
  // await initStorage();
  // await initUserCubit();
}

void _initLocalizations() {
  final deviceLocale = Locale(Platform.localeName.split('_').first);
  // ignore: unused_local_variable
  final locale = AppLocalizations.supportedLocales.firstWhere(
    (element) => element.languageCode == deviceLocale.languageCode,
    orElse: () => AppLocalizations.supportedLocales.first,
  );
  // sl.registerSingleton(
  //     LocaleCubit(locale: kDebugMode ? const Locale('ar') : locale));
  // sl.registerSingleton(LocaleCubit(locale: const Locale('ar')));
}

/*Future<void> initStorage() async {
  await GetStorage.init();
  sl.registerSingleton(SharedPrefs());
}

Future<void> initUserCubit() async {
  final user = await sl<GetUserUseCase>()();

  user.fold(
    (failure) {
      sl.registerLazySingleton(
          () => UserCubit(user: null, deleteToken: sl(), deleteUser: sl()));
    },
    (user) => sl.registerLazySingleton(
        () => UserCubit(user: user, deleteToken: sl(), deleteUser: sl())),
  );
}*/
