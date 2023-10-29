import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:synchronized/synchronized.dart';

class SharedPreferencesUtil {
  SharedPreferencesUtil._();

  static SharedPreferencesUtil? _singleton;
  static FlutterSecureStorage? _prefs;
  static Lock _lock = Lock();

  static Future<SharedPreferencesUtil?> getInstance() async {
    if (_singleton == null) {
      await _lock.synchronized(() async {
        if (_singleton == null) {
          final singleton = SharedPreferencesUtil._();
          await singleton._init();
          _singleton = singleton;
        }
      });
    }
    return _singleton;
  }

  Future _init() async {
    _prefs = await FlutterSecureStorage(aOptions: _getAndroidOptions());
  }

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  static Future<String?> getString(String key, {String? defValue = ''}) async {
    final String? value = await _prefs?.read(key: key);
    return value;
  }

  static Future<void>? putString(String key, String value) async {
    await _prefs?.write(key: key, value: value);
  }

  static Future<void>? putObject(String key, Object value) async {
    await _prefs?.write(key: key, value: json.encode(value));
  }

  static Future<T?> getObj<T>(String key, T f(Map v), {T? defValue}) async {
    final Map? map = await getObject(key);
    return map == null ? defValue : f(map);
  }

  static Future<void>? deleteKey(String key) async {
    await _prefs?.delete(key: key);
  }

  static Future<void>? clear() {
    return _prefs?.deleteAll();
  }

  static Future<Map?> getObject(String key) async {
    final String? _data = await _prefs?.read(key: key);
    return (_data == null || _data.isEmpty) ? null : json.decode(_data);
  }
}
