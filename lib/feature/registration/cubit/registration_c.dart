// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names, lines_longer_than_80_chars
import 'dart:convert';

import 'package:dadata/dadata.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:dialysis/app/common_cubits/common_cubits.dart';
import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/data_base/data_base.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/navigation/navigation.dart';

const _MIN_AGE = 13;
const _MAX_AGE = 100;

class RegistrationCubit extends HydratedCubit<RegistrationState> {
  RegistrationCubit({
    required AppRouter router,
    required DaDataClient clienTips,
    required AppStorage storage,
    required AppDb db,
  })  : _go = router,
        _clienTips = clienTips,
        _db = db,
        _storage = storage,
        super(
          const RegistrationState(
            isLoadPage: true,
            isValid: false,
            status: FormzSubmissionStatus.initial,
            validNameFormz: ValidNameFormz.pure(),
            validGenderFormz: ValidGenderFormz.pure(),
            validActivityFormz: ValidActivityFormz.pure(),
            genderSelected: [false, false],
            activitySelected: [false, false],
            dateRegModel: DateRegModel(),
            isLoadNextPage: false,
            validBirthdayFormz: ValidBirthdayFormz.pure(),
            validHeightFormz: ValidHeightFormz.pure(),
            heightList: [
              '230',
              '229',
              '228',
              '227',
              '226',
              '225',
              '224',
              '223',
              '222',
              '221',
              '220',
              '219',
              '218',
              '217',
              '216',
              '215',
              '214',
              '213',
              '212',
              '211',
              '210',
              '209',
              '208',
              '207',
              '206',
              '205',
              '204',
              '203',
              '202',
              '201',
              '200',
              '199',
              '198',
              '197',
              '196',
              '195',
              '194',
              '193',
              '192',
              '191',
              '190',
              '189',
              '188',
              '187',
              '186',
              '185',
              '184',
              '183',
              '182',
              '181',
              '180',
              '179',
              '178',
              '177',
              '176',
              '175',
              '174',
              '173',
              '172',
              '171',
              '170',
              '169',
              '168',
              '167',
              '166',
              '165',
              '164',
              '163',
              '162',
              '161',
              '160',
              '159',
              '158',
              '157',
              '156',
              '155',
              '154',
              '153',
              '152',
              '151',
              '150',
              '149',
              '148',
              '147',
              '146',
              '145',
              '144',
              '143',
              '142',
              '141',
              '140',
              '139',
              '138',
              '137',
              '136',
              '135',
              '134',
              '133',
              '132',
              '131',
              '130',
              '129',
              '128',
              '127',
              '126',
              '125',
              '124',
              '123',
              '122',
              '121',
              '120',
              '119',
              '118',
              '117',
              '116',
              '115',
              '114',
              '113',
              '112',
              '111',
              '110',
              '109',
              '108',
              '107',
              '106',
              '105',
              '104',
              '103',
              '102',
              '101',
              '100',
              '99',
              '98',
              '97',
              '96',
              '95',
              '94',
              '93',
              '92',
              '91',
              '90',
              '89',
              '88',
              '87',
              '86',
              '85',
              '84',
              '83',
              '82',
              '81',
              '80',
              '79',
              '78',
              '77',
              '76',
              '75',
              '74',
              '73',
              '72',
              '71',
              '70',
              '69',
              '68',
              '67',
              '66',
              '65',
              '64',
              '63',
              '62',
              '61',
              '60',
            ],
            validWeightFormz: ValidWeightFormz.pure(),
            ckdSelected: [
              false,
              false,
              false,
              false,
              false,
              false,
              false,
            ],
            validCkdFormz: ValidCkdFormz.pure(),
            validCreatinineFormz: ValidCreatinineFormz.pure(),
          ),
        );
  final DaDataClient _clienTips;

  // ignore: unused_field
  final AppRouter _go;
  // ignore: unused_field
  final AppStorage _storage;
  final AppDb _db;

  LocaleEnum _locale = LocaleEnum.en;
  Future<void> load() async {
    emit(state.copyWith(isLoadPage: true));

    _locale = LocaleEnum.fromValue(
      await _storage.getLocale(),
      fallback: LocaleEnum.en,
    );

    await _db.load();

    final db = await _db.openDB();
    final result =
        await db.rawQuery('SELECT * from ${TableEnum.date_month.name}');

    final listYear = <String>[];
    final listMonth = <String>[];
    var row = <String, dynamic>{};
    String? ruMonth;
    String? enMonth;
    for (var i = 0; i < result.length; i++) {
      // listDate.add(DateDbModel.fromJson(result[i]));
      row = result[i];

      ruMonth = row[ColumnDateMonthEnum.ru_month.name];
      enMonth = row[ColumnDateMonthEnum.en_month.name];

      if (ruMonth != null && enMonth != null) {
        _locale.map(
          ru: () => listMonth.add(ruMonth!),
          en: () => listMonth.add(enMonth!),
        );
      }
    }
// calculate year
    final yearStart = DateTime.now().year - _MAX_AGE;
    final yearEnd = DateTime.now().year - _MIN_AGE;
    for (var i = yearEnd; i > yearStart; i--) {
      listYear.add(i.toString());
    }

    emit(
      state.copyWith(
        isLoadPage: false,
        dateRegModel: DateRegModel(months: listMonth, years: listYear),
      ),
    );
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

  void checkName(String value) {
    final validNameFormz = ValidNameFormz.dirty(value);
    emit(
      state.copyWith(
        validNameFormz: validNameFormz,
        // isValid: Formz.validate([validNameFormz, state.validNameFormz,state.]),
      ),
    );
  }

  void checkAll() {
    final validNameFormz = ValidNameFormz.dirty(state.validNameFormz.value);
    final validWeightFormz =
        ValidWeightFormz.dirty(value: state.validWeightFormz.value);
    final validGenderFormz =
        ValidGenderFormz.dirty(state.validGenderFormz.value);
    final validActivityFormz =
        ValidActivityFormz.dirty(state.validActivityFormz.value);

    final validBirthdayFormz = ValidBirthdayFormz.dirty(_getDateRaw());
    final validHeightFormz =
        ValidHeightFormz.dirty(state.validHeightFormz.value);
    final validCkdFormz = ValidCkdFormz.dirty(state.validCkdFormz.value);

    final validCreatinineFormz =
        ValidCreatinineFormz.dirty(value: state.validCreatinineFormz.value);
    emit(
      state.copyWith(
        validActivityFormz: validActivityFormz,
        validNameFormz: validNameFormz,
        validGenderFormz: validGenderFormz,
        validBirthdayFormz: validBirthdayFormz,
        validHeightFormz: validHeightFormz,
        validWeightFormz: validWeightFormz,
        validCkdFormz: validCkdFormz,
        validCreatinineFormz: validCreatinineFormz,
        isValid: Formz.validate(
          [
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
  }

  String _getDateRaw() {
    final day = state.daySelected;
    final monthName = state.monthSelected;
    final year = state.yearSelected;

    if (day != null && monthName != null && year != null) {
      var monthNumber =
          (state.dateRegModel.months.indexOf(monthName) + 1).toString();
      if (monthNumber.length == 1) {
        monthNumber = '0$monthNumber';
      }
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

  void checkCkd(int value) {
    final ckdEnum = CkdEnum.values[value];

    final validCkdFormz = ValidCkdFormz.dirty(ckdEnum);

    var ckdSelected = <bool>[];
    ckdEnum.map(
      one: () => ckdSelected = [true, false, false, false, false, false, false],
      two: () => ckdSelected = [false, true, false, false, false, false, false],
      three: () =>
          ckdSelected = [false, false, true, false, false, false, false],
      four: () =>
          ckdSelected = [false, false, false, true, false, false, false],
      five_before_dialysis: () =>
          ckdSelected = [false, false, false, false, true, false, false],
      five_after_dialysis: () =>
          ckdSelected = [false, false, false, false, false, true, false],
      not_know: () =>
          ckdSelected = [false, false, false, false, false, false, true],
      none: () =>
          ckdSelected = [false, false, false, false, false, false, false],
    );

    emit(
      state.copyWith(
        ckdSelected: ckdSelected,
        validCkdFormz: validCkdFormz,
      ),
    );
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

ValidGenderFormz _getValueGender(Map<String, dynamic> map) {
  final valueGender = GenderEnum.fromValue(map['validGenderFormz']);
  ValidGenderFormz validGenderFormz;
  if (valueGender == GenderEnum.none) {
    validGenderFormz = const ValidGenderFormz.pure();
  } else {
    validGenderFormz = ValidGenderFormz.dirty(valueGender);
  }
  return validGenderFormz;
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

  final String? daySelected;
  final String? yearSelected;
  final String? monthSelected;

  final List<String> heightList;
  final List<bool> genderSelected;
  final List<bool> activitySelected;
  final List<bool> ckdSelected;
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

  // enum
  final FormzSubmissionStatus status;
  const RegistrationState({
    required this.isLoadPage,
    required this.isLoadNextPage,
    required this.isValid,
    this.daySelected,
    this.yearSelected,
    this.monthSelected,
    required this.heightList,
    required this.genderSelected,
    required this.activitySelected,
    required this.ckdSelected,
    required this.dateRegModel,
    required this.validNameFormz,
    required this.validActivityFormz,
    required this.validGenderFormz,
    required this.validBirthdayFormz,
    required this.validHeightFormz,
    required this.validWeightFormz,
    required this.validCkdFormz,
    required this.validCreatinineFormz,
    required this.status,
  });

  RegistrationState copyWith({
    bool? isLoadPage,
    bool? isLoadNextPage,
    bool? isValid,
    String? daySelected,
    String? yearSelected,
    String? monthSelected,
    List<String>? heightList,
    List<bool>? genderSelected,
    List<bool>? activitySelected,
    List<bool>? ckdSelected,
    DateRegModel? dateRegModel,
    ValidNameFormz? validNameFormz,
    ValidActivityFormz? validActivityFormz,
    ValidGenderFormz? validGenderFormz,
    ValidBirthdayFormz? validBirthdayFormz,
    ValidHeightFormz? validHeightFormz,
    ValidWeightFormz? validWeightFormz,
    ValidCkdFormz? validCkdFormz,
    ValidCreatinineFormz? validCreatinineFormz,
    FormzSubmissionStatus? status,
  }) {
    return RegistrationState(
      isLoadPage: isLoadPage ?? this.isLoadPage,
      isLoadNextPage: isLoadNextPage ?? this.isLoadNextPage,
      isValid: isValid ?? this.isValid,
      daySelected: daySelected ?? this.daySelected,
      yearSelected: yearSelected ?? this.yearSelected,
      monthSelected: monthSelected ?? this.monthSelected,
      heightList: heightList ?? this.heightList,
      genderSelected: genderSelected ?? this.genderSelected,
      activitySelected: activitySelected ?? this.activitySelected,
      ckdSelected: ckdSelected ?? this.ckdSelected,
      dateRegModel: dateRegModel ?? this.dateRegModel,
      validNameFormz: validNameFormz ?? this.validNameFormz,
      validActivityFormz: validActivityFormz ?? this.validActivityFormz,
      validGenderFormz: validGenderFormz ?? this.validGenderFormz,
      validBirthdayFormz: validBirthdayFormz ?? this.validBirthdayFormz,
      validHeightFormz: validHeightFormz ?? this.validHeightFormz,
      validWeightFormz: validWeightFormz ?? this.validWeightFormz,
      validCkdFormz: validCkdFormz ?? this.validCkdFormz,
      validCreatinineFormz: validCreatinineFormz ?? this.validCreatinineFormz,
      status: status ?? this.status,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegistrationState.fromJson(String source) =>
      RegistrationState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegistrationState(isLoadPage: $isLoadPage, isLoadNextPage: $isLoadNextPage, isValid: $isValid, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, heightList: $heightList, genderSelected: $genderSelected, activitySelected: $activitySelected, ckdSelected: $ckdSelected, dateRegModel: $dateRegModel, validNameFormz: $validNameFormz, validActivityFormz: $validActivityFormz, validGenderFormz: $validGenderFormz, validBirthdayFormz: $validBirthdayFormz, validHeightFormz: $validHeightFormz, validWeightFormz: $validWeightFormz, validCkdFormz: $validCkdFormz, validCreatinineFormz: $validCreatinineFormz, status: $status)';
  }

  @override
  bool operator ==(covariant RegistrationState other) {
    if (identical(this, other)) return true;

    return other.isLoadPage == isLoadPage &&
        other.isLoadNextPage == isLoadNextPage &&
        other.isValid == isValid &&
        other.daySelected == daySelected &&
        other.yearSelected == yearSelected &&
        other.monthSelected == monthSelected &&
        listEquals(other.heightList, heightList) &&
        listEquals(other.genderSelected, genderSelected) &&
        listEquals(other.activitySelected, activitySelected) &&
        listEquals(other.ckdSelected, ckdSelected) &&
        other.dateRegModel == dateRegModel &&
        other.validNameFormz == validNameFormz &&
        other.validActivityFormz == validActivityFormz &&
        other.validGenderFormz == validGenderFormz &&
        other.validBirthdayFormz == validBirthdayFormz &&
        other.validHeightFormz == validHeightFormz &&
        other.validWeightFormz == validWeightFormz &&
        other.validCkdFormz == validCkdFormz &&
        other.validCreatinineFormz == validCreatinineFormz &&
        other.status == status;
  }

  @override
  int get hashCode {
    return isLoadPage.hashCode ^
        isLoadNextPage.hashCode ^
        isValid.hashCode ^
        daySelected.hashCode ^
        yearSelected.hashCode ^
        monthSelected.hashCode ^
        heightList.hashCode ^
        genderSelected.hashCode ^
        activitySelected.hashCode ^
        ckdSelected.hashCode ^
        dateRegModel.hashCode ^
        validNameFormz.hashCode ^
        validActivityFormz.hashCode ^
        validGenderFormz.hashCode ^
        validBirthdayFormz.hashCode ^
        validHeightFormz.hashCode ^
        validWeightFormz.hashCode ^
        validCkdFormz.hashCode ^
        validCreatinineFormz.hashCode ^
        status.hashCode;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoadPage': isLoadPage,
      'isLoadNextPage': isLoadNextPage,
      'isValid': isValid,
      'daySelected': daySelected,
      'yearSelected': yearSelected,
      'monthSelected': monthSelected,
      'heightList': heightList,
      'genderSelected': genderSelected,
      'activitySelected': activitySelected,
      'ckdSelected': ckdSelected,
      'dateRegModel': dateRegModel.toMap(),
      'validNameFormz': validNameFormz.value,
      'validActivityFormz': validActivityFormz.value.name,
      'validGenderFormz': validGenderFormz.value.name,
      'validBirthdayFormz': validBirthdayFormz.value,
      'validHeightFormz': validHeightFormz.value,
      'validWeightFormz': validWeightFormz.value,
      'validCkdFormz': validCkdFormz.value.name,
      'validCreatinineFormz': validCreatinineFormz.value,
      'status': status.index,
    };
  }

  factory RegistrationState.fromMap(Map<String, dynamic> map) {
    return RegistrationState(
      isLoadPage: (map['isLoadPage'] ?? false) as bool,
      isLoadNextPage: (map['isLoadNextPage'] ?? false) as bool,
      isValid: (map['isValid'] ?? false) as bool,
      daySelected:
          map['daySelected'] != null ? map['daySelected'] as String : null,
      yearSelected:
          map['yearSelected'] != null ? map['yearSelected'] as String : null,
      monthSelected:
          map['monthSelected'] != null ? map['monthSelected'] as String : null,
      heightList: List<String>.from(
          (map['heightList'] ?? const <String>[]) as List<String>),
      genderSelected: List<bool>.from(
          (map['genderSelected'] ?? const <bool>[]) as List<bool>),
      activitySelected: List<bool>.from(
          (map['activitySelected'] ?? const <bool>[]) as List<bool>),
      ckdSelected:
          List<bool>.from((map['ckdSelected'] ?? const <bool>[]) as List<bool>),
      dateRegModel:
          DateRegModel.fromMap(map['dateRegModel'] as Map<String, dynamic>),
      // custom
      validNameFormz: _getValueName(map),
      // custom
      validGenderFormz: _getValueGender(map),
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