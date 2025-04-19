import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'prefs_keys.dart';

class SharedPrefs {
  final FlutterSecureStorage _secure;
  final SharedPreferences _prefs;
  const SharedPrefs(this._prefs, this._secure);

  Future<void> saveString(
      {required PrefsKeys key, required String value}) async {
    await _prefs.setString(key.name, value);
  }

  String? getString({required PrefsKeys key}) {
    return _prefs.getString(key.name);
  }

  Future<void> saveBool({required PrefsKeys key, required bool value}) async {
    await _prefs.setBool(key.name, value);
  }

  bool? getBool({required PrefsKeys key}) {
    return _prefs.getBool(key.name);
  }

  Future<void> saveSecuredValue<T>(
      {required PrefsKeys key, required T value}) async {
    await _secure.write(key: key.name, value: json.encode(value));
  }

  Future<T?> getSecuredValue<T>({required PrefsKeys key}) async {
    final result = await _secure.read(key: key.name);
    if (result == null) return null;
    return json.decode(result) as T;
  }

  Future<void> deleteSecuredValue({required PrefsKeys key}) async {
    await _secure.delete(key: key.name);
  }
}
