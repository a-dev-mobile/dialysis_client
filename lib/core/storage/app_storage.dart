// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:developer';


import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';
import 'package:dialysis/feature/registration/model/user_info_m.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// LocalStorage Singleton class
class AppStorage {
  AppStorage({
    bool isShowLog = false,
  }) : _isShowLog = isShowLog;
  final bool _isShowLog;

  static const String _info = '';

  static const String _set = '💾 👇🏻SET';
  static const String _get = '💾 ☝🏻 GET';

// ******************************
  static const _firstStart = '_first_start';
  Future<bool> isFirstStart() {
    return getBool(key: _firstStart, defValue: true);
  }

  Future<void> completeFirstStart() {
    return setBool(key: _firstStart, value: false);
  }
// ******************************

  static const _completeOnboarding = 'completed_onboarding';

  Future<bool> isOnboardingCompleted() {
    return getBool(key: _completeOnboarding);
  }

  Future<void> completeOnboarding() {
    return setBool(key: _completeOnboarding, value: true);
  }

// ******************************
  static const _locale = 'locale';

  Future<String> getLocale() {
    return getString(key: _locale, defaultValue: 'en_US');
  }

  Future<void> setLocale(String locale) {
    return setString(key: _locale, value: locale);
  }

// ******************************
  static const _db_patch = '_db_patch';

  Future<String> getDbPatch() {
    return getString(key: _db_patch);
  }

  Future<void> setDbPatch(String path) {
    return setString(key: _db_patch, value: path);
  }

// ******************************
  // static const _db_zip_patch = '_db_zip_patch';

  // Future<String> getDbZipPatch() {
  //   return getString(key: _db_zip_patch);
  // }

  // Future<void> setDbZipPatch(String path) {
  //   return setString(key: _db_zip_patch, value: path);
  // }

// ******************************
// ******************************
  static const _db_version = '_db_version';

  Future<int> getDbUpdateVersion() {
    return getInt(key: _db_version);
  }

  Future<void> setDbVersion(int value) {
    return setInt(key: _db_version, value: value);
  }

// ******************************

  static const _lastSearchList = 'saved_list';

  Future<List<String>> getListSearch() {
    return getStringList(key: _lastSearchList);
  }

  Future<void> setLastSearch(String v) async {
    final value = v.trim();
    final list = await getStringList(key: _lastSearchList);

    final growableList = List<String>.empty(growable: true)..addAll(list);

    if (growableList.contains(value)) final _ = growableList.remove(value);

    growableList.add(value);

    await setStringList(key: _lastSearchList, value: growableList);
  }
// ******************************

  static const _favoriteList = '_favoriteList';

  Future<List<String>> getFavorite()  {
    return getStringList(key: _favoriteList);
  }

  Future<void> addFavorite(List<String> value) async {
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

  static const _path_db_update = '_path_db_update';

  Future<List<String>> getPathUpdateFilesDb()  {
    return getStringList(key: _path_db_update);
  }

  Future<List<String>> getNameUpdateFilesDb() async {
    final list = await getPathUpdateFilesDb();

    final names = <String>[];
    for (final i in list) {
      names.add(i.split('/').last.split('.').first);
    }

    return getStringList(key: _path_db_update);
  }

  Future<void> setPathUpdateFilesDb(List<String> value) {
    return setStringList(key: _path_db_update, value: value);
  }
// ******************************

// ******************************
// ******************************

  static const _categories = 'categories';

  Future<List<String>> getSelectedCategories()  {
    return  getStringList(key: _categories);
  }

  Future<void> setSelectedCategories(List<String> value) {
    return setStringList(key: _categories, value: value);
  }

// ******************************
  static const _day_product = '_day_product';

  Future<List<DayProductsModel>> getListDayProducts() async {
    final listRaw = await getStringList(key: _day_product);
    final listModel = <DayProductsModel>[];
    for (final i in listRaw) {
      listModel.add(DayProductsModel.fromJson(i));
    }

    return listModel;
  }

  Future<void> setDayProducts(List<DayProductsModel> value) {
    final listString = <String>[];
    for (final i in value) {
      listString.add(i.toJson());
    }

    return setStringList(key: _day_product, value: listString);
  }

// ******************************
  static const _user_info = '_user_info';

  Future<UserInfoModel> getUserInfoModel() async {
    return UserInfoModel.fromMap(await getJson(key: _user_info));
  }

  Future<void> setUserInfoModel(UserInfoModel value) {
    return setJson(key: _user_info, value: value.toMap());
  }

// ******************************
// ******************************
  /// SaveString.
  Future<void> setString({required String key, required String value}) async {
    final pref = await SharedPreferences.getInstance();
    final result = await pref.setString(key, value);
    if (_isShowLog) {
      log('$_set $_info > $key\nvalue = $value\nresult = $result');
    }
  }

  Future<void> setStringList({
    required String key,
    required List<String> value,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setStringList(key, value);
    if (_isShowLog) {
      log('$_set $_info > $key\nvalue = $value');
    }
  }

  Future<void> setJson({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setString(key, jsonEncode(value));
    if (_isShowLog) {
      log('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveBool.
  Future<void> setBool({required String key, required bool value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setBool(key, value);
    if (_isShowLog) {
      log('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveDouble.
  Future<void> setDouble({required String key, required double value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setDouble(key, value);
    if (_isShowLog) {
      log('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveInt.
  Future<void> setInt({required String key, required int value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setInt(key, value);
    if (_isShowLog) {
      log('$_set $_info > $key\nvalue = $value');
    }
  }

  Future<Map<String, dynamic>> getJson({
    required String key,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result =
        jsonDecode(pref.getString(key) ?? '{}') as Map<String, dynamic>;

    if (_isShowLog) {
      log('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetString.
  Future<String> getString({
    required String key,
    String defaultValue = '',
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getString(key) ?? defaultValue;
    if (_isShowLog) {
      log('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetListString.
  Future<List<String>> getStringList({required String key}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getStringList(key) ?? List.empty();
    if (_isShowLog) {
      log('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetInt.
  Future<int> getInt({required String key, int defaultValue = 0}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getInt(key) ?? defaultValue;
    if (_isShowLog) {
      log('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetDouble.
  Future<double> getDouble({
    required String key,
    double defaultValue = 0,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getDouble(key) ?? defaultValue;
    if (_isShowLog) {
      log('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetBoolData.
  Future<bool> getBool({required String key, bool defValue = false}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getBool(key) ?? defValue;
    if (_isShowLog) {
      log('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// IsNull.
  Future<bool> isNull(String key) async {
    final pref = await SharedPreferences.getInstance();
    final val = pref.get(key);
    bool result;

    // ignore: avoid_bool_literals_in_conditional_expressions
    result = val == null ? true : false;
    if (_isShowLog) {
      log(
        '$_get  $_info | isNull \nresult = $result \nkey = $key \nvalue = $val',
      );
    }

    return result;
  }

  /// ClearAll.
  Future<void> clearAll() async {
    final pref = await SharedPreferences.getInstance();
    final result = await pref.clear();

    if (_isShowLog) log('CLEAR $_info > result = $result');
  }
}
