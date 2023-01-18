// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names, lines_longer_than_80_chars
import 'dart:async';

import 'package:dadata/dadata.dart';
import 'package:dialysis/app/common_cubits/common_cubits.dart';
import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/core/utils/launch_links.dart';

import 'package:dialysis/feature/dashboard/view/view.dart';

import 'package:dialysis/feature/registration/registration.dart';

import 'package:dialysis/navigation/navigation.dart';

import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'registration_state.dart';
part 'registration_cubit.freezed.dart';
part 'registration_cubit.g.dart';

class RegistrationCubit extends HydratedCubit<RegistrationState> {
  RegistrationCubit({
    required AppRouter router,
    required DaDataClient clienTips,
    required AppStorage storage,
  })  : _go = router,
        _clienTips = clienTips,
        _storage = storage,
        super(
          RegistrationState(
            dateRegModel: DateRegModel(
              days: _initDayMonth(start: 1, end: 31),
              months: _initDayMonth(start: 1, end: 12),
              years: _initYears(),
            ),
            heightList: _initHeight(),
            ckdSelected: _getListBoolCkd(indexTrue: null),
          ),
        );
  final DaDataClient _clienTips;

  final AppRouter _go;

  final AppStorage _storage;

  static const _MIN_AGE = 13;
  static const _MAX_AGE = 100;

  static const _MIN_HEIGHT = 50;
  static const _MAX_HEIGHT = 220;

  LocaleEnum _locale = LocaleEnum.en;
  Future<void> load() async {
    emit(state.copyWith(isLoadPage: true));

    _locale = LocaleEnum.fromValue(
      await _storage.getLocale(),
      fallback: LocaleEnum.en,
    );

    // await _db.load();

    // final db = await _db.openDB();
    // final result =
    //     await db.rawQuery('SELECT * from ${TableEnum.date_month.name}');
    // unawaited(db.close());

    emit(state.copyWith(isLoadPage: false, isLoadNextPage: false));
  }

  static List<String> _initYears() {
    final listYear = <String>[];
    final yearStart = DateTime.now().year - _MAX_AGE;
    final yearEnd = DateTime.now().year - _MIN_AGE;
    for (var i = yearEnd; i > yearStart; i--) {
      listYear.add(i.toString());
    }

    return listYear;
  }

  static List<String> _initDayMonth({required int start, required int end}) {
    final list = <String>[];
    for (var i = start; i <= end; i++) {
      if (i < 10) {
        list.add('0$i');
        continue;
      }

      list.add(i.toString());
    }

    return list;
  }

  static List<String> _initHeight() {
    final list = <String>[];
    for (var i = _MAX_HEIGHT; i > _MIN_HEIGHT; i--) {
      list.add(i.toString());
    }

    return list;
  }

  Future<List<String>> getSuggestionsName(String value) async {
    FioTooltip result;

    if (_locale == LocaleEnum.ru) {
      result = await _clienTips.fetchFioTooltip(value, DaDataEnum.name);

      return _getTips(result);
    }

    return [];
  }

  void checkHeight(String? value) {
    final valid = ValidHeightFormz.dirty(value);
    emit(
      state.copyWith(
        validHeightFormz: valid,
      ),
    );
  }

  void openPolicy() {
    const en =
        'https://docs.google.com/document/d/1HfAqwOAMXT_ntykDdwwFJYO8njz3ZVQCcW51SuYZhD0/edit?usp=sharing';

    const ru =
        'https://docs.google.com/document/d/1M-WG6WJdVx3Y2OtUi_3XwG4h_J1rZnnPPn_a38q6-OE/edit?usp=sharing';

    unawaited(
      _locale.map(
        ru: () => LaunchLinks.urlExternal(ru),
        en: () => LaunchLinks.urlInternal(en),
      ),
    );
  }

  void checkName(String value) {
    final validNameFormz = ValidNameFormz.dirty(value);
    emit(
      state.copyWith(
        validNameFormz: validNameFormz,
        // isValid: Formz.validate([validNameFormz, state.validNameFormz,state.]),
      ),
    );
  }

  Future<void> nextPage() async {
    emit(state.copyWith(isLoadNextPage: true));
    final userInfo = UserInfoModel(
      name: state.validNameFormz.value,
      gender: state.validGenderFormz.value,
      activity: state.validActivityFormz.value,
      birthday: DateTime.parse(state.validBirthdayFormz.value),
      height: int.tryParse(state.validHeightFormz.value ?? '0') ?? 0,
      weight: state.validWeightFormz.value ?? 0,
      ckd: state.validCkdFormz.value,
      creatinin: state.validCreatinineFormz.value ?? 0,
      created: DateTime.now(),
      updated: DateTime.now(),
    );
    await _storage.setUserInfoModel(userInfo);
    await Future<void>.delayed(const Duration(seconds: 5));

    _go.router.goNamed(DashBoardPage.name);
    // emit(state.copyWith(isLoadNextPage: false));
  }

  bool isValid() {
    final validNameFormz = ValidNameFormz.dirty(state.validNameFormz.value);
    final validWeightFormz =
        ValidWeightFormz.dirty(value: state.validWeightFormz.value);
    final validGenderFormz =
        ValidGenderFormz.dirty(state.validGenderFormz.value);

    final validHypertensionFormz =
        ValidHypertensionFormz.dirty(state.validHypertensionFormz.value);

    final validDiabetesFormz =
        ValidDiabetesFormz.dirty(state.validDiabetesFormz.value);

    final validActivityFormz =
        ValidActivityFormz.dirty(state.validActivityFormz.value);

    final validBirthdayFormz = ValidBirthdayFormz.dirty(_getDateRaw());
    final validHeightFormz =
        ValidHeightFormz.dirty(state.validHeightFormz.value);
    final validCkdFormz = ValidCkdFormz.dirty(state.validCkdFormz.value);
// todo исправить узнать как считать
    final validCreatinineFormz = ValidCreatinineFormz.dirty(
      value: state.validCreatinineFormz.value ?? 0,
    );
    emit(
      state.copyWith(
        validActivityFormz: validActivityFormz,
        validNameFormz: validNameFormz,
        validGenderFormz: validGenderFormz,
        validDiabetesFormz: validDiabetesFormz,
        validHypertensionFormz: validHypertensionFormz,
        validBirthdayFormz: validBirthdayFormz,
        validHeightFormz: validHeightFormz,
        validWeightFormz: validWeightFormz,
        validCkdFormz: validCkdFormz,
        validCreatinineFormz: validCreatinineFormz,
        isValid: Formz.validate(
          [
            validHypertensionFormz,
            validDiabetesFormz,
            validGenderFormz,
            validNameFormz,
            validActivityFormz,
            validBirthdayFormz,
            validHeightFormz,
            validWeightFormz,
            validCkdFormz,
            validCreatinineFormz,
          ],
        ),
      ),
    );

    return state.isValid;
  }

  String _getDateRaw() {
    final day = state.daySelected;
    final monthNumber = state.monthSelected;
    final year = state.yearSelected;

    if (day != null && monthNumber != null && year != null) {
      return '$year-$monthNumber-$day';
    }

    return '';
  }

  void checkGender(int value) {
    final gender = GenderEnum.values[value];

    final validGenderFormz = ValidGenderFormz.dirty(gender);

    final genderSelected = gender.map(
      male: () => [false, true],
      female: () => [true, false],
      none: () => [false, false],
    );

    emit(
      state.copyWith(
        genderSelected: genderSelected,
        validGenderFormz: validGenderFormz,
        // isValid: Formz.validate(
        //   [state.validNameFormz, validGenderFormz, state.validActivityFormz],
        // ),
      ),
    );
  }

  void checkHypertension(int index) {
    final value = HypertensionEnum.values[index];

    final valid = ValidHypertensionFormz.dirty(value);

    final listBool = value.map(
      yes: () => [true, false],
      no: () => [false, true],
      none: () => [false, false],
    );

    emit(
      state.copyWith(
        hypertensionSelected: listBool,
        validHypertensionFormz: valid,
      ),
    );
  }

  void checkDiabetes(int index) {
    final value = DiabetesEnum.values[index];

    final valid = ValidDiabetesFormz.dirty(value);

    final listBool = value.map(
      yes: () => [true, false],
      no: () => [false, true],
      none: () => [false, false],
    );

    emit(
      state.copyWith(
        diabetesSelected: listBool,
        validDiabetesFormz: valid,
      ),
    );
  }

  void checkCkd(int value) {
    final ckdEnum = CkdEnum.values[value];

    final validCkdFormz = ValidCkdFormz.dirty(ckdEnum);

    var ckdSelected = <bool>[];

    ckdSelected = _getListBoolCkd(indexTrue: ckdEnum.index);
    emit(
      state.copyWith(
        ckdSelected: ckdSelected,
        validCkdFormz: validCkdFormz,
      ),
    );
  }

  static List<bool> _getListBoolCkd({required int? indexTrue}) {
    final list = <bool>[];

    for (var i = 0; i < CkdEnum.values.length - 1; i++) {
      if (i == indexTrue) {
        list.add(true);
      } else {
        list.add(false);
      }
    }

    return list;
  }

  void checkActivity(int value) {
    final enumValue = ActivityEnum.values[value];

    final validActivityFormz = ValidActivityFormz.dirty(enumValue);

    final activitySelected = enumValue.map(
      light: () => [false, true],
      normal: () => [true, false],
      none: () => [false, false],
    );

    emit(
      state.copyWith(
        activitySelected: activitySelected,
        validActivityFormz: validActivityFormz,
      ),
    );
  }

  List<String> _getTips(FioTooltip result) {
    final list = <String>[];
    final length = result.suggestions.length;
    if (length == 0) return list;

    for (var i = 0; i < length; i++) {
      list.add(
        result.suggestions[i].value,
      );
    }

    return list;
  }

  void _checkBridghday() {
    final validBirthdayFormz = ValidBirthdayFormz.dirty(_getDateRaw());

    emit(state.copyWith(validBirthdayFormz: validBirthdayFormz));
  }

  void changeDay(String? value) {
    emit(state.copyWith(daySelected: value));
    _checkBridghday();
  }

  void changeMonth(String? value) {
    emit(state.copyWith(monthSelected: value));
    _checkBridghday();
  }

  void changeYear(String? value) {
    emit(state.copyWith(yearSelected: value));
    _checkBridghday();
  }

  void checkWeight(String value) {
    if (value.isEmpty) {
      emit(
        state.copyWith(
          validWeightFormz: const ValidWeightFormz.dirty(
            externalError: ValidWeightError.isEmpty,
          ),
        ),
      );

      return;
    }

    final doubleValue = double.tryParse(value);

    ValidWeightFormz validWeightFormz;

    validWeightFormz = doubleValue == null
        ? const ValidWeightFormz.dirty(
            externalError: ValidWeightError.isNoValid,
          )
        : ValidWeightFormz.dirty(value: doubleValue);

    emit(
      state.copyWith(
        validWeightFormz: validWeightFormz,
      ),
    );
  }

  void checkCreatinine(String value) {
    if (value.isEmpty) {
      emit(
        state.copyWith(
          validCreatinineFormz: const ValidCreatinineFormz.dirty(
            externalError: ValidCreatinineError.isEmpty,
          ),
        ),
      );

      return;
    }

    final doubleValue = double.tryParse(value);

    ValidCreatinineFormz validCreatinineFormz;

    validCreatinineFormz = doubleValue == null
        ? const ValidCreatinineFormz.dirty(
            externalError: ValidCreatinineError.isNoValid,
          )
        : ValidCreatinineFormz.dirty(value: doubleValue);

    emit(
      state.copyWith(
        validCreatinineFormz: validCreatinineFormz,
      ),
    );
  }

  @override
  RegistrationState? fromJson(Map<String, dynamic> json) {
    return RegistrationState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(RegistrationState state) {
    return state.toJson();
  }
}
