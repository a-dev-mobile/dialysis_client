// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names, lines_longer_than_80_chars
import 'dart:async';
import 'dart:convert';

import 'package:dadata/dadata.dart';
import 'package:dialysis/app/common_cubits/common_cubits.dart';
import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/core/utils/launch_links.dart';
import 'package:dialysis/feature/diary/diary.dart';

import 'package:dialysis/feature/registration/registration.dart';

import 'package:dialysis/navigation/navigation.dart';

import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

const _MIN_AGE = 13;
const _MAX_AGE = 100;

const _MIN_HEIGHT = 50;
const _MAX_HEIGHT = 220;

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
            isLoadPage: false,
            isLoadNextPage: false,
            isValid: false,
            genderSelected:
                _getListBoolFalseValue(lenght: GenderEnum.values.length),
            activitySelected:
                _getListBoolFalseValue(lenght: ActivityEnum.values.length),
            diabetesSelected:
                _getListBoolFalseValue(lenght: DiabetesEnum.values.length),
            hypertensionSelected:
                _getListBoolFalseValue(lenght: HypertensionEnum.values.length),
            dateRegModel: DateRegModel(
              months: _initDayMonth(start: 1, end: 12),
              years: _initYears(),
              days: _initDayMonth(start: 1, end: 31),
            ),
            status: FormzSubmissionStatus.initial,
            validNameFormz: const ValidNameFormz.pure(),
            validGenderFormz: const ValidGenderFormz.pure(),
            validActivityFormz: const ValidActivityFormz.pure(),
            heightList: _initHeight(),
            ckdSelected: _getListBoolCkd(indexTrue: null),
            validBirthdayFormz: const ValidBirthdayFormz.pure(),
            validHeightFormz: const ValidHeightFormz.pure(),
            validWeightFormz: const ValidWeightFormz.pure(),
            validCkdFormz: const ValidCkdFormz.pure(),
            validCreatinineFormz: const ValidCreatinineFormz.pure(),
            validDiabetesFormz: const ValidDiabetesFormz.pure(),
            validHypertensionFormz: const ValidHypertensionFormz.pure(),
          ),
        );
  final DaDataClient _clienTips;


  final AppRouter _go;

  final AppStorage _storage;

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


    emit(state.copyWith(isLoadPage: false));
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

  Future<void> openPolicy() async {
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
      created: DateTime.now(),
      creatinin: state.validCreatinineFormz.value ?? 0,
      updated: DateTime.now(),
    );
    await _storage.setUserInfoModel(userInfo);
    await Future<void>.delayed(const Duration(seconds: 5));

    _go.router.pushNamed(DiaryPage.name);
    emit(state.copyWith(isLoadNextPage: false));
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

    var genderSelected = <bool>[];
    gender.map(
      male: () => genderSelected = [false, true],
      female: () => genderSelected = [true, false],
      none: () => genderSelected = [false, false],
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

    var listBool = <bool>[];
    value.map(
      yes: () => listBool = [true, false],
      no: () => listBool = [false, true],
      none: () => listBool = [false, false],
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

    var listBool = <bool>[];
    value.map(
      yes: () => listBool = [true, false],
      no: () => listBool = [false, true],
      none: () => listBool = [false, false],
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

  static List<bool> _getListBoolFalseValue({required int lenght}) {
    final list = <bool>[];

    for (var i = 0; i < lenght - 1; i++) {
      list.add(false);
    }
    return list;
  }

  void checkActivity(int value) {
    final enumValue = ActivityEnum.values[value];

    final validActivityFormz = ValidActivityFormz.dirty(enumValue);

    var activitySelected = <bool>[];
    enumValue.map(
      light: () => activitySelected = [false, true],
      normal: () => activitySelected = [true, false],
      none: () => activitySelected = [false, false],
    );

    emit(
      state.copyWith(
        activitySelected: activitySelected,
        validActivityFormz: validActivityFormz,
        // isValid: Formz.validate(
        //   [state.validNameFormz, validActivityFormz, state.validGenderFormz],
        // ),
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

  @override
  RegistrationState? fromJson(Map<String, dynamic> json) {
    return RegistrationState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(RegistrationState state) {
    return state.toMap();
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

    if (doubleValue == null) {
      validWeightFormz = const ValidWeightFormz.dirty(
        externalError: ValidWeightError.isNoValid,
      );
    } else {
      validWeightFormz = ValidWeightFormz.dirty(value: doubleValue);
    }

    emit(
      state.copyWith(
        validWeightFormz: validWeightFormz,
        // isValid: Formz.validate([validNameFormz, state.validNameFormz,state.]),
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

    if (doubleValue == null) {
      validCreatinineFormz = const ValidCreatinineFormz.dirty(
        externalError: ValidCreatinineError.isNoValid,
      );
    } else {
      validCreatinineFormz = ValidCreatinineFormz.dirty(value: doubleValue);
    }

    emit(
      state.copyWith(
        validCreatinineFormz: validCreatinineFormz,
      ),
    );
  }
}

ValidGenderFormz _getGender(Map<String, dynamic> map) {
  final valueGender = GenderEnum.fromValue(map['validGenderFormz']);
  ValidGenderFormz validGenderFormz;
  if (valueGender == GenderEnum.none) {
    validGenderFormz = const ValidGenderFormz.pure();
  } else {
    validGenderFormz = ValidGenderFormz.dirty(valueGender);
  }
  return validGenderFormz;
}

ValidDiabetesFormz _getValueDiabetes(Map<String, dynamic> map) {
  final value = DiabetesEnum.fromValue(map['validDiabetesFormz']);
  ValidDiabetesFormz valid;
  if (value == DiabetesEnum.none) {
    valid = const ValidDiabetesFormz.pure();
  } else {
    valid = ValidDiabetesFormz.dirty(value);
  }
  return valid;
}

ValidHypertensionFormz _getValueHypertension(Map<String, dynamic> map) {
  final value = HypertensionEnum.fromValue(map['validHypertensionFormz']);
  ValidHypertensionFormz valid;
  if (value == HypertensionEnum.none) {
    valid = const ValidHypertensionFormz.pure();
  } else {
    valid = ValidHypertensionFormz.dirty(value);
  }
  return valid;
}

ValidCkdFormz _getValueCkd(Map<String, dynamic> map) {
  final value = CkdEnum.fromValue(map['validCkdFormz']);
  ValidCkdFormz valid;
  if (value == CkdEnum.none) {
    valid = const ValidCkdFormz.pure();
  } else {
    valid = ValidCkdFormz.dirty(value);
  }
  return valid;
}

ValidNameFormz _getValueName(Map<String, dynamic> map) {
  final valueName = map['validNameFormz'].toString();
  ValidNameFormz validNameFormz;
  if (valueName.isEmpty) {
    validNameFormz = const ValidNameFormz.pure();
  } else {
    validNameFormz = ValidNameFormz.dirty(valueName);
  }
  return validNameFormz;
}

ValidWeightFormz _getValueWeight(Map<String, dynamic> map) {
  final value = map['validWeightFormz'] as double?;
  ValidWeightFormz valid;
  if (value == null) {
    valid = const ValidWeightFormz.pure();
  } else {
    valid = ValidWeightFormz.pure(value: value);
  }
  return valid;
}

ValidCreatinineFormz _getValueCreatinine(Map<String, dynamic> map) {
  final value = map['validCreatinineFormz'] as double?;
  ValidCreatinineFormz valid;
  if (value == null) {
    valid = const ValidCreatinineFormz.pure();
  } else {
    valid = ValidCreatinineFormz.pure(value: value);
  }
  return valid;
}

// ignore: unused_element
ValidBirthdayFormz _getValidBirthday(Map<String, dynamic> map) {
  final validBirthday = map['validBirthdayFormz'].toString();
  // ignore: unused_local_variable
  ValidBirthdayFormz validBirthdayFormz;
  if (validBirthday.isEmpty) {
    validBirthdayFormz = const ValidBirthdayFormz.pure();
  } else {
    validBirthdayFormz = ValidBirthdayFormz.dirty(validBirthday);
  }
  return validBirthdayFormz;
}

ValidActivityFormz _getValueActivity(Map<String, dynamic> map) {
  final valueActivity = ActivityEnum.fromValue(map['validActivityFormz']);
  ValidActivityFormz validActivityFormz;
  if (valueActivity == ActivityEnum.none) {
    validActivityFormz = const ValidActivityFormz.pure();
  } else {
    validActivityFormz = ValidActivityFormz.dirty(valueActivity);
  }
  return validActivityFormz;
}

ValidHeightFormz _getValueHeight(Map<String, dynamic> map) {
  final value = map['validHeightFormz'];
  ValidHeightFormz valid;
  if (value == null) {
    valid = const ValidHeightFormz.pure();
  } else {
    valid = ValidHeightFormz.dirty(value.toString());
  }
  return valid;
}

@immutable
class RegistrationState {
  final bool isLoadPage;
  final bool isLoadNextPage;
  final bool isValid;
  //
  final List<bool> activitySelected;
  final List<bool> genderSelected;
  final String? daySelected;
  final String? yearSelected;
  final String? monthSelected;
  final List<String> heightList;
  final List<bool> ckdSelected;
  final List<bool> hypertensionSelected;
  final List<bool> diabetesSelected;

  final DateRegModel dateRegModel;
  //
  final ValidNameFormz validNameFormz;
  final ValidActivityFormz validActivityFormz;
  final ValidGenderFormz validGenderFormz;
  final ValidBirthdayFormz validBirthdayFormz;
  final ValidHeightFormz validHeightFormz;
  final ValidWeightFormz validWeightFormz;
  final ValidCkdFormz validCkdFormz;
  final ValidCreatinineFormz validCreatinineFormz;
  final ValidHypertensionFormz validHypertensionFormz;
  final ValidDiabetesFormz validDiabetesFormz;

  // enum
  final FormzSubmissionStatus status;
  const RegistrationState({
    required this.isLoadPage,
    required this.isLoadNextPage,
    required this.isValid,
    required this.activitySelected,
    required this.genderSelected,
    this.daySelected,
    this.yearSelected,
    this.monthSelected,
    required this.heightList,
    required this.ckdSelected,
    required this.hypertensionSelected,
    required this.diabetesSelected,
    required this.dateRegModel,
    required this.validNameFormz,
    required this.validActivityFormz,
    required this.validGenderFormz,
    required this.validBirthdayFormz,
    required this.validHeightFormz,
    required this.validWeightFormz,
    required this.validCkdFormz,
    required this.validCreatinineFormz,
    required this.validHypertensionFormz,
    required this.validDiabetesFormz,
    required this.status,
  });

  RegistrationState copyWith({
    bool? isLoadPage,
    bool? isLoadNextPage,
    bool? isValid,
    List<bool>? activitySelected,
    List<bool>? genderSelected,
    String? daySelected,
    String? yearSelected,
    String? monthSelected,
    List<String>? heightList,
    List<bool>? ckdSelected,
    List<bool>? hypertensionSelected,
    List<bool>? diabetesSelected,
    DateRegModel? dateRegModel,
    ValidNameFormz? validNameFormz,
    ValidActivityFormz? validActivityFormz,
    ValidGenderFormz? validGenderFormz,
    ValidBirthdayFormz? validBirthdayFormz,
    ValidHeightFormz? validHeightFormz,
    ValidWeightFormz? validWeightFormz,
    ValidCkdFormz? validCkdFormz,
    ValidCreatinineFormz? validCreatinineFormz,
    ValidHypertensionFormz? validHypertensionFormz,
    ValidDiabetesFormz? validDiabetesFormz,
    FormzSubmissionStatus? status,
  }) {
    return RegistrationState(
      isLoadPage: isLoadPage ?? this.isLoadPage,
      isLoadNextPage: isLoadNextPage ?? this.isLoadNextPage,
      isValid: isValid ?? this.isValid,
      activitySelected: activitySelected ?? this.activitySelected,
      genderSelected: genderSelected ?? this.genderSelected,
      daySelected: daySelected ?? this.daySelected,
      yearSelected: yearSelected ?? this.yearSelected,
      monthSelected: monthSelected ?? this.monthSelected,
      heightList: heightList ?? this.heightList,
      ckdSelected: ckdSelected ?? this.ckdSelected,
      hypertensionSelected: hypertensionSelected ?? this.hypertensionSelected,
      diabetesSelected: diabetesSelected ?? this.diabetesSelected,
      dateRegModel: dateRegModel ?? this.dateRegModel,
      validNameFormz: validNameFormz ?? this.validNameFormz,
      validActivityFormz: validActivityFormz ?? this.validActivityFormz,
      validGenderFormz: validGenderFormz ?? this.validGenderFormz,
      validBirthdayFormz: validBirthdayFormz ?? this.validBirthdayFormz,
      validHeightFormz: validHeightFormz ?? this.validHeightFormz,
      validWeightFormz: validWeightFormz ?? this.validWeightFormz,
      validCkdFormz: validCkdFormz ?? this.validCkdFormz,
      validCreatinineFormz: validCreatinineFormz ?? this.validCreatinineFormz,
      validHypertensionFormz:
          validHypertensionFormz ?? this.validHypertensionFormz,
      validDiabetesFormz: validDiabetesFormz ?? this.validDiabetesFormz,
      status: status ?? this.status,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegistrationState.fromJson(String source) =>
      RegistrationState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegistrationState(isLoadPage: $isLoadPage, isLoadNextPage: $isLoadNextPage, isValid: $isValid, activitySelected: $activitySelected, genderSelected: $genderSelected, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, heightList: $heightList, ckdSelected: $ckdSelected, hypertensionSelected: $hypertensionSelected, diabetesSelected: $diabetesSelected, dateRegModel: $dateRegModel, validNameFormz: $validNameFormz, validActivityFormz: $validActivityFormz, validGenderFormz: $validGenderFormz, validBirthdayFormz: $validBirthdayFormz, validHeightFormz: $validHeightFormz, validWeightFormz: $validWeightFormz, validCkdFormz: $validCkdFormz, validCreatinineFormz: $validCreatinineFormz, validHypertensionFormz: $validHypertensionFormz, validDiabetesFormz: $validDiabetesFormz, status: $status)';
  }

  @override
  bool operator ==(covariant RegistrationState other) {
    if (identical(this, other)) return true;

    return other.isLoadPage == isLoadPage &&
        other.isLoadNextPage == isLoadNextPage &&
        other.isValid == isValid &&
        listEquals(other.activitySelected, activitySelected) &&
        listEquals(other.genderSelected, genderSelected) &&
        other.daySelected == daySelected &&
        other.yearSelected == yearSelected &&
        other.monthSelected == monthSelected &&
        listEquals(other.heightList, heightList) &&
        listEquals(other.ckdSelected, ckdSelected) &&
        listEquals(other.hypertensionSelected, hypertensionSelected) &&
        listEquals(other.diabetesSelected, diabetesSelected) &&
        other.dateRegModel == dateRegModel &&
        other.validNameFormz == validNameFormz &&
        other.validActivityFormz == validActivityFormz &&
        other.validGenderFormz == validGenderFormz &&
        other.validBirthdayFormz == validBirthdayFormz &&
        other.validHeightFormz == validHeightFormz &&
        other.validWeightFormz == validWeightFormz &&
        other.validCkdFormz == validCkdFormz &&
        other.validCreatinineFormz == validCreatinineFormz &&
        other.validHypertensionFormz == validHypertensionFormz &&
        other.validDiabetesFormz == validDiabetesFormz &&
        other.status == status;
  }

  @override
  int get hashCode {
    return isLoadPage.hashCode ^
        isLoadNextPage.hashCode ^
        isValid.hashCode ^
        activitySelected.hashCode ^
        genderSelected.hashCode ^
        daySelected.hashCode ^
        yearSelected.hashCode ^
        monthSelected.hashCode ^
        heightList.hashCode ^
        ckdSelected.hashCode ^
        hypertensionSelected.hashCode ^
        diabetesSelected.hashCode ^
        dateRegModel.hashCode ^
        validNameFormz.hashCode ^
        validActivityFormz.hashCode ^
        validGenderFormz.hashCode ^
        validBirthdayFormz.hashCode ^
        validHeightFormz.hashCode ^
        validWeightFormz.hashCode ^
        validCkdFormz.hashCode ^
        validCreatinineFormz.hashCode ^
        validHypertensionFormz.hashCode ^
        validDiabetesFormz.hashCode ^
        status.hashCode;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoadPage': isLoadPage,
      'isLoadNextPage': isLoadNextPage,
      'isValid': isValid,
      'activitySelected': activitySelected,
      'genderSelected': genderSelected,
      'daySelected': daySelected,
      'yearSelected': yearSelected,
      'monthSelected': monthSelected,
      'heightList': heightList,
      'ckdSelected': ckdSelected,
      'hypertensionSelected': hypertensionSelected,
      'diabetesSelected': diabetesSelected,
      'dateRegModel': dateRegModel.toMap(),
      'validNameFormz': validNameFormz.value,
      'validActivityFormz': validActivityFormz.value.name,
      'validGenderFormz': validGenderFormz.value.name,
      'validBirthdayFormz': validBirthdayFormz.value,
      'validHeightFormz': validHeightFormz.value,
      'validWeightFormz': validWeightFormz.value,
      'validCkdFormz': validCkdFormz.value.name,
      'validCreatinineFormz': validCreatinineFormz.value,
      'validHypertensionFormz': validHypertensionFormz.value.name,
      'validDiabetesFormz': validDiabetesFormz.value.name,
      'status': status.index,
    };
  }

  factory RegistrationState.fromMap(Map<String, dynamic> map) {
    return RegistrationState(
      isLoadPage: (map['isLoadPage'] ?? false) as bool,
      isLoadNextPage: (map['isLoadNextPage'] ?? false) as bool,
      isValid: (map['isValid'] ?? false) as bool,
      activitySelected: List<bool>.from(
          (map['activitySelected'] ?? const <bool>[]) as List<bool>),
      genderSelected: List<bool>.from(
          (map['genderSelected'] ?? const <bool>[]) as List<bool>),
      daySelected:
          map['daySelected'] != null ? map['daySelected'] as String : null,
      yearSelected:
          map['yearSelected'] != null ? map['yearSelected'] as String : null,
      monthSelected:
          map['monthSelected'] != null ? map['monthSelected'] as String : null,
      heightList: List<String>.from(
          (map['heightList'] ?? const <String>[]) as List<String>),
      ckdSelected:
          List<bool>.from((map['ckdSelected'] ?? const <bool>[]) as List<bool>),
      hypertensionSelected: List<bool>.from(
          (map['hypertensionSelected'] ?? const <bool>[]) as List<bool>),
      diabetesSelected: List<bool>.from(
          (map['diabetesSelected'] ?? const <bool>[]) as List<bool>),
      dateRegModel:
          DateRegModel.fromMap(map['dateRegModel'] as Map<String, dynamic>),
      // custom
      validNameFormz: _getValueName(map),
      // custom
      validGenderFormz: _getGender(map),
      // custom
      validActivityFormz: _getValueActivity(map),
      // custom
      validBirthdayFormz: const ValidBirthdayFormz.pure(),
      // validBirthdayFormz: validBirthdayFormz,
      //
      // custom
      validWeightFormz: _getValueWeight(map),
      // custom
      validHeightFormz: _getValueHeight(map),
      // custom
      validCkdFormz: _getValueCkd(map),
      // custom
      validCreatinineFormz: _getValueCreatinine(map),
      // custom
      validHypertensionFormz: _getValueHypertension(map),
      // custom
      validDiabetesFormz: _getValueDiabetes(map),
      status: FormzSubmissionStatus.values[(map['status'] ?? 0) as int],
    );
  }
}

/* 


  factory RegistrationState.fromMap(Map<String, dynamic> map) {
    //
    final valueGender = GenderEnum.fromValue(map['validGenderFormz']);
    ValidGenderFormz validGenderFormz;
    if (valueGender == GenderEnum.none) {
      validGenderFormz = const ValidGenderFormz.pure();
    } else {
      validGenderFormz = ValidGenderFormz.dirty(valueGender);
    }
    //
    final valueName = map['validNameFormz'].toString();
    ValidNameFormz validNameFormz;
    if (valueName.isEmpty) {
      validNameFormz = const ValidNameFormz.pure();
    } else {
      validNameFormz = ValidNameFormz.dirty(valueName);
    }

    //
    final valueActivity = ActivityEnum.fromValue(map['validActivityFormz']);
    ValidActivityFormz validActivityFormz;
    if (valueActivity == ActivityEnum.none) {
      validActivityFormz = const ValidActivityFormz.pure();
    } else {
      validActivityFormz = ValidActivityFormz.dirty(valueActivity);
    }
    return RegistrationState(
      isLoadPage: (map['isLoad'] ?? false) as bool,
      isLoadNextPage: (map['isLoadNextPage'] ?? false) as bool,
      isValid: (map['isValid'] ?? false) as bool,
      genderSelected: List<bool>.from(
        (map['genderSelected'] ?? const <bool>[]) as List<bool>,
      ),
      // custom
      validNameFormz: validNameFormz,
      // custom
      validGenderFormz: validGenderFormz,
      // custom
      validActivityFormz: validActivityFormz,
      //
      daySelected:
          map['daySelected'] != null ? map['daySelected'] as String : null,
      yearSelected:
          map['yearSelected'] != null ? map['yearSelected'] as String : null,
      monthSelected:
          map['monthSelected'] != null ? map['monthSelected'] as String : null,

      status: FormzSubmissionStatus.values[(map['status'] ?? 0) as int],
      dateRegModel:
          DateRegModel.fromMap(map['dateRegModel'] as Map<String, dynamic>),
      activitySelected: List<bool>.from(
        (map['activitySelected'] ?? const <bool>[]) as List<bool>,
      ),
    );
  }
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoad': isLoadPage,
      'isValid': isValid,
      'daySelected': daySelected,
      'yearSelected': yearSelected,
      'monthSelected': monthSelected,
      'isLoadNextPage': isLoadNextPage,
      'activitySelected': activitySelected,
      'genderSelected': genderSelected,
      'dateRegModel': dateRegModel.toMap(),
      'validNameFormz': validNameFormz.value,
      'validGenderFormz': validGenderFormz.value.name,
      'validActivityFormz': validActivityFormz.value.name,
      'status': status.index,
    };
  }
 */
