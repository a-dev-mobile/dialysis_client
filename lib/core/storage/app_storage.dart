// ignore_for_file: avoid_positional_boolean_parameters, constant_identifier_names, lines_longer_than_80_chars

import 'dart:convert';

import 'package:dialysis/core/log/log.dart';
import 'package:dialysis/global_const.dart';

import 'package:shared_preferences/shared_preferences.dart';

/// LocalStorage Singleton class
class AppStorage {
  static final AppStorage _internalSingleton = AppStorage._internal();
  factory AppStorage() => _internalSingleton;
  AppStorage._internal();

  static const String _info = '';

  static const String _set = '💾 👇🏻SET';
  static const String _get = '💾 ☝🏻 GET';

// ******************************
  static const _firstStart = '_first_start';
  static Future<bool> isFirstStart() {
    return getBool(key: _firstStart, defValue: true);
  }

  static Future<void> completeFirstStart() {
    return setBool(key: _firstStart, value: false);
  }
// ******************************

// ******************************
  static const _completeOnboarding = 'completed_onboarding';

  static Future<bool> isOnboardingCompleted() {
    return getBool(key: _completeOnboarding);
  }

  static Future<void> completeOnboarding() {
    return setBool(key: _completeOnboarding, value: true);
  }

// ******************************
  static const _locale = 'locale';

  static Future<String> getLocale() {
    return getString(key: _locale);
  }

  static Future<void> setLocale(String locale) {
    return setString(key: _locale, value: locale);
  }

// ******************************
  static const _db_patch = '_db_patch';

  static Future<String> getDbPatch() {
    return getString(key: _db_patch);
  }

  static Future<void> setDbPatch(String path) {
    return setString(key: _db_patch, value: path);
  }

// ******************************
  // static const _db_zip_patch = '_db_zip_patch';

  // static Future<String> getDbZipPatch() {
  //   return getString(key: _db_zip_patch);
  // }

  // static Future<void> setDbZipPatch(String path) {
  //   return setString(key: _db_zip_patch, value: path);
  // }

// ******************************
// ******************************
  static const _db_version = '_db_version';

  static Future<int> getDbUpdateVersion() {
    return getInt(key: _db_version);
  }

  static Future<void> setDbVersion(int value) {
    return setInt(key: _db_version, value: value);
  }

// ******************************

  static const _lastSearchList = 'saved_list';

  static Future<List<String>> getListSearch() {
    return getStringList(key: _lastSearchList);
  }

  static Future<void> setLastSearch(String v) async {
    final value = v.trim();
    final list = await getStringList(key: _lastSearchList);

    final growableList = List<String>.empty(growable: true)..addAll(list);

    if (growableList.contains(value)) final _ = growableList.remove(value);

    growableList.add(value);

    await setStringList(key: _lastSearchList, value: growableList);
  }
// ******************************

  static const _favoriteList = '_favoriteList';

  static Future<List<String>> getFavorite() async {
    return getStringList(key: _favoriteList);
  }

  static Future<void> addFavorite(List<String> value) async {
    // final list = await getFavorite();

    /*  //  -1 if [element] is not found.
    final foundIndex = list.indexWhere(
      (i) => i.idProduct == value.idProduct,
    );
    // если такой продукт есть
    if (!foundIndex.isNegative) {
      final _ = list.removeAt(foundIndex);
    }
    // добавляем только активные
    if (value.isFavorite) list.add(value);

    final listString = <String>[];

    for (final i in list) {
      listString.add(i.toJson());
    } */
    await setStringList(key: _favoriteList, value: value);
  }
// ******************************

  static const _json_file = '_json_file';

  static Future<List<String>> getJsonFiles() async {
    return getStringList(key: _json_file);
  }

  static Future<List<String>> getNameJsonFiles() async {
    final list = await getJsonFiles();

    final names = <String>[];
    for (final i in list) {
      names.add(i.split('/').last.split('.').first);
    }

    return getStringList(key: _json_file);
  }

  static Future<void> setJsonFiles(List<String> value) {
    return setStringList(key: _json_file, value: value);
  }
// ******************************

// ******************************
// ******************************

  static const _categories = 'categories';

  static Future<List<String>> getSelectedCategories() async {
    return await getStringList(key: _categories);
  }

  static Future<void> setSelectedCategories(List<String> value) {
    return setStringList(key: _categories, value: value);
  }

// ******************************
  /// SaveString.
  static Future<void> setString(
      {required String key, required String value}) async {
    final pref = await SharedPreferences.getInstance();
    final result = await pref.setString(key, value);
    if (IS_DEBUG) {
      log.i('$_set $_info > $key\nvalue = $value\nresult = $result');
    }
  }

  static Future<void> setStringList({
    required String key,
    required List<String> value,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setStringList(key, value);
    if (IS_DEBUG) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  static Future<void> setJson({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setString(key, jsonEncode(value));
    if (IS_DEBUG) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveBool.
  static Future<void> setBool(
      {required String key, required bool value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setBool(key, value);
    if (IS_DEBUG) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveDouble.
  static Future<void> setDouble(
      {required String key, required double value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setDouble(key, value);
    if (IS_DEBUG) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveInt.
  static Future<void> setInt({required String key, required int value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setInt(key, value);
    if (IS_DEBUG) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  static Future<Map<String, dynamic>> getJson({
    required String key,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result =
        jsonDecode(pref.getString(key) ?? '{}') as Map<String, dynamic>;

    if (IS_DEBUG) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetString.
  static Future<String> getString({
    required String key,
    String defaultValue = '',
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getString(key) ?? defaultValue;
    if (IS_DEBUG) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetListString.
  static Future<List<String>> getStringList({required String key}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getStringList(key) ?? List.empty();
    if (IS_DEBUG) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetInt.
  static Future<int> getInt({required String key, int defaultValue = 0}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getInt(key) ?? defaultValue;
    if (IS_DEBUG) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetDouble.
  static Future<double> getDouble({
    required String key,
    double defaultValue = 0,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getDouble(key) ?? defaultValue;
    if (IS_DEBUG) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetBoolData.
  static Future<bool> getBool(
      {required String key, bool defValue = false}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getBool(key) ?? defValue;
    if (IS_DEBUG) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// IsNull.
  static Future<bool> isNull(String key) async {
    final pref = await SharedPreferences.getInstance();
    final val = pref.get(key);
    bool result;

    // ignore: avoid_bool_literals_in_conditional_expressions
    result = val == null ? true : false;
    if (IS_DEBUG) {
      log.i(
        '$_get  $_info | isNull \nresult = $result \nkey = $key \nvalue = $val',
      );
    }

    return result;
  }

  /// ClearAll.
  static Future<void> clearAll() async {
    final pref = await SharedPreferences.getInstance();
    final result = await pref.clear();

    if (IS_DEBUG) log.i('CLEAR $_info > result = $result');
  }
}
