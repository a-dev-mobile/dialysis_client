// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names, lines_longer_than_80_chars
import 'dart:async';

import 'package:dadata/dadata.dart';
import 'package:dialysis/app/app.dart';

import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/core/utils/launch_links.dart';
import 'package:dialysis/core/widget/widget.dart';

import 'package:dialysis/feature/dashboard/view/view.dart';

import 'package:dialysis/feature/registration/registration.dart';

import 'package:dialysis/navigation/navigation.dart';

import 'package:flutter/widgets.dart';

import 'package:formz/formz.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';

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
            ckdSelected: _getListBoolByIndexTrue(indexTrue: null),
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
    final valid = ValidHeight.dirty(value);
    emit(
      state.copyWith(
        validHeight: valid,
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
    final validName = ValidName.dirty(value);
    emit(
      state.copyWith(
        validName: validName,
        // isValid: .validate([validName, state.validName,state.]),
      ),
    );
  }

  Future<void> nextPage() async {
    emit(state.copyWith(isLoadNextPage: true));
    final userInfo = UserInfoModel(
      name: state.validName.value,
      gender: state.validGender.value,
      activity: state.validActivity.value,
      birthday: DateTime.parse(state.validBirthday.value),
      height: int.tryParse(state.validHeight.value ?? '0') ?? 0,
      weight: state.validWeight.value ?? 0,
      ckd: state.validCkd.value,
      creatinin: state.validCreatinine.value ?? 0,
      created: DateTime.now(),
      updated: DateTime.now(),
    );
    await _storage.setUserInfoModel(userInfo);
    await Future<void>.delayed(const Duration(seconds: 5));

    _go.router.goNamed(DashBoardPage.name);
    // emit(state.copyWith(isLoadNextPage: false));
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
    final gender = EnumGender.values[value];

    final validGender = ValidGender.dirty(gender);

    final genderSelected = gender.map(
      male: () => [false, true],
      female: () => [true, false],
      none: () => [false, false],
    );

    emit(
      state.copyWith(
        genderSelected: genderSelected,
        validGender: validGender,
        // isValid: .validate(
        //   [state.validName, validGender, state.validActivity],
        // ),
      ),
    );
  }

  void checkHypertension(int index) {
    final value = HypertensionEnum.values[index];

    final valid = ValidHypertension.dirty(value);

    final listBool = value.map(
      yes: () => [true, false],
      no: () => [false, true],
      none: () => [false, false],
    );

    emit(
      state.copyWith(
        hypertensionSelected: listBool,
        validHypertension: valid,
      ),
    );
  }

  void checkDiabetes(int index) {
    final value = DiabetesEnum.values[index];

    final valid = ValidDiabetes.dirty(value);

    final listBool = value.map(
      yes: () => [true, false],
      no: () => [false, true],
      none: () => [false, false],
    );

    emit(
      state.copyWith(
        diabetesSelected: listBool,
        validDiabetes: valid,
      ),
    );
  }

  void checkDailyDiuresis(int value) {
    final valueEnum = EnumDailyDiuresis.values[value];

    final valid = ValidDailyDiuresis.dirty(valueEnum);

    var listBoolSelected = <bool>[];

    listBoolSelected = _getListBoolByIndexTrue(indexTrue: valueEnum.index);
    emit(
      state.copyWith(
        dailyDiuresisSelected: listBoolSelected,
        validDailyDiuresis: valid,
        isVisibleUrineOutput: valueEnum == EnumDailyDiuresis.low,
      ),
    );
  }

  void checkCkd(int value) {
    final enumValue = CkdEnum.values[value];

    final validCkd = ValidCkd.dirty(enumValue);

    var ckdSelected = <bool>[];

    ckdSelected = _getListBoolByIndexTrue(indexTrue: enumValue.index);
    emit(
      state.copyWith(
        ckdSelected: ckdSelected,
        validCkd: validCkd,
        isVisibleCreatinine: enumValue == CkdEnum.notKnow,
      ),
    );
  }

  static List<bool> _getListBoolByIndexTrue({required int? indexTrue}) {
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

    final validActivity = ValidActivity.dirty(enumValue);

    final activitySelected = enumValue.map(
      light: () => [false, true],
      normal: () => [true, false],
      none: () => [false, false],
    );

    emit(
      state.copyWith(
        activitySelected: activitySelected,
        validActivity: validActivity,
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
    final validBirthday = ValidBirthday.dirty(_getDateRaw());

    emit(state.copyWith(validBirthday: validBirthday));
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
          validWeight: const ValidWeight.dirty(
            externalError: ValidWeightError.isEmpty,
          ),
        ),
      );

      return;
    }

    final doubleValue = double.tryParse(value);

    ValidWeight validWeight;

    validWeight = doubleValue == null
        ? const ValidWeight.dirty(
            externalError: ValidWeightError.isNoValid,
          )
        : ValidWeight.dirty(value: doubleValue);

    emit(
      state.copyWith(
        validWeight: validWeight,
      ),
    );
  }

  void checkUrineOutput(String value) {
    if (value.isEmpty) {
      emit(
        state.copyWith(
          validUrineOutput: const ValidUrineOutput.dirty(
            externalError: ValidUrineOutputError.isEmpty,
          ),
        ),
      );

      return;
    }

    final doubleValue = double.tryParse(value);

    final validUrineOutput = doubleValue == null
        ? const ValidUrineOutput.dirty(
            externalError: ValidUrineOutputError.isNoValid,
          )
        : ValidUrineOutput.dirty(value: doubleValue);

    emit(
      state.copyWith(
        validUrineOutput: validUrineOutput,
      ),
    );
  }

  void checkCreatinine(String value) {
    if (value.isEmpty) {
      emit(
        state.copyWith(
          validCreatinine: const ValidCreatinine.dirty(
            externalError: ValidCreatinineError.isEmpty,
          ),
        ),
      );

      return;
    }

    final doubleValue = double.tryParse(value);

    ValidCreatinine validCreatinine;

    validCreatinine = doubleValue == null
        ? const ValidCreatinine.dirty(
            externalError: ValidCreatinineError.isNoValid,
          )
        : ValidCreatinine.dirty(value: doubleValue);

    emit(
      state.copyWith(
        validCreatinine: validCreatinine,
      ),
    );
  }

  @override
  RegistrationState? fromJson(Map<String, dynamic> json) {
    return RegistrationState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(RegistrationState state) {
    return state.toMap();
  }

  bool isValid(BuildContext context) {
    final validName = ValidName.dirty(state.validName.value);
    final validWeight = ValidWeight.dirty(value: state.validWeight.value);
    final validGender = ValidGender.dirty(state.validGender.value);

    final validHypertension =
        ValidHypertension.dirty(state.validHypertension.value);

    final validDiabetes = ValidDiabetes.dirty(state.validDiabetes.value);

    final validActivity = ValidActivity.dirty(state.validActivity.value);

    final validBirthday = ValidBirthday.dirty(_getDateRaw());
    final validHeight = ValidHeight.dirty(state.validHeight.value);
    final validCkd = ValidCkd.dirty(state.validCkd.value);
    final validDailyDiuresis =
        ValidDailyDiuresis.dirty(state.validDailyDiuresis.value);
// todo исправить узнать как считать

    final validCreatinine =
        ValidCreatinine.dirty(value: state.validCreatinine.value);
    final validUrineOutput =
        ValidUrineOutput.dirty(value: state.validUrineOutput.value);
    emit(
      state.copyWith(
        validActivity: validActivity,
        validName: validName,
        validGender: validGender,
        validDiabetes: validDiabetes,
        validHypertension: validHypertension,
        validBirthday: validBirthday,
        validHeight: validHeight,
        validWeight: validWeight,
        validCkd: validCkd,
        validCreatinine: validCreatinine,
        validDailyDiuresis: validDailyDiuresis,
        validUrineOutput: validUrineOutput,
        isValid: Formz.validate(
          [
            validHypertension,
            validDiabetes,
            validGender,
            validName,
            validActivity,
            validBirthday,
            validHeight,
            validWeight,
            validCkd,
            validDailyDiuresis,
            if (state.isVisibleCreatinine) validCreatinine,
            if (state.isVisibleUrineOutput) validUrineOutput,
          ],
        ),
      ),
    );

    MySnackBar.show(
      context: context,
     
      msg: 'Ошибка 1\nОшибка 1\nОшибка 1\nОшибка 1\n',
      alertType: AlertType.error,
      duration: const Duration(seconds: 5),
      title: 'Проверте введеные данные',
    );

    return state.isValid;
  }
}
