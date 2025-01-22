import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/localization/localization_manager.dart';
import '../../core/shared_preferences/shared_prefs.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // startup
  sl.registerSingleton(const FlutterSecureStorage());
  sl.registerSingleton(await SharedPreferences.getInstance());
  sl.registerSingleton(SharedPrefs(sl(), sl()));
  sl.registerSingleton(LocaleCubit());
}
