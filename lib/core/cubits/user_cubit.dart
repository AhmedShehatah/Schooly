import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/auth/entities/user.dart';
import '../shared_preferences/prefs_keys.dart';
import '../shared_preferences/shared_prefs.dart';

class UserCubit extends Cubit<User?> {
  UserCubit(this._shared) : super(null) {
    _init();
  }
  Future<void> _init() async {
    final user = await _shared.getSecuredValue(key: PrefsKeys.userDetails);
    emit(user);
  }

  final SharedPrefs _shared;

  void setUser(User? user) => emit(user);
  void deleteUser() => emit(null);
}
