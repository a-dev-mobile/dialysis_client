// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names
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
    final validGenderFormz =
        ValidGenderFormz.dirty(state.validGenderFormz.value);
    final validActivityFormz =
        ValidActivityFormz.dirty(state.validActivityFormz.value);

    final validBirthdayFormz = ValidBirthdayFormz.dirty(_getDateRaw());

   

    emit(
      state.copyWith(
        validActivityFormz: validActivityFormz,
        validNameFormz: validNameFormz,
        validGenderFormz: validGenderFormz,
        validBirthdayFormz: validBirthdayFormz,
        isValid: Formz.validate(
          [
            validGenderFormz,
            validNameFormz,
            validActivityFormz,
            validBirthdayFormz
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
}

@immutable
class RegistrationState {
  final bool isLoadPage;
  final bool isLoadNextPage;
  final bool isValid;

  final String? daySelected;
  final String? yearSelected;
  final String? monthSelected;

  final List<bool> genderSelected;
  final List<bool> activitySelected;
  final DateRegModel dateRegModel;
  //
  final ValidNameFormz validNameFormz;
  final ValidActivityFormz validActivityFormz;
  final ValidGenderFormz validGenderFormz;
  final ValidBirthdayFormz validBirthdayFormz;
  // enum
  final FormzSubmissionStatus status;
  const RegistrationState({
    required this.isLoadPage,
    required this.isLoadNextPage,
    required this.isValid,
    this.daySelected,
    this.yearSelected,
    this.monthSelected,
    required this.genderSelected,
    required this.activitySelected,
    required this.dateRegModel,
    required this.validNameFormz,
    required this.validActivityFormz,
    required this.validGenderFormz,
    required this.validBirthdayFormz,
    required this.status,
  });

  RegistrationState copyWith({
    bool? isLoadPage,
    bool? isLoadNextPage,
    bool? isValid,
    String? daySelected,
    String? yearSelected,
    String? monthSelected,
    List<bool>? genderSelected,
    List<bool>? activitySelected,
    DateRegModel? dateRegModel,
    ValidNameFormz? validNameFormz,
    ValidActivityFormz? validActivityFormz,
    ValidGenderFormz? validGenderFormz,
    ValidBirthdayFormz? validBirthdayFormz,
    FormzSubmissionStatus? status,
  }) {
    return RegistrationState(
      isLoadPage: isLoadPage ?? this.isLoadPage,
      isLoadNextPage: isLoadNextPage ?? this.isLoadNextPage,
      isValid: isValid ?? this.isValid,
      daySelected: daySelected ?? this.daySelected,
      yearSelected: yearSelected ?? this.yearSelected,
      monthSelected: monthSelected ?? this.monthSelected,
      genderSelected: genderSelected ?? this.genderSelected,
      activitySelected: activitySelected ?? this.activitySelected,
      dateRegModel: dateRegModel ?? this.dateRegModel,
      validNameFormz: validNameFormz ?? this.validNameFormz,
      validActivityFormz: validActivityFormz ?? this.validActivityFormz,
      validGenderFormz: validGenderFormz ?? this.validGenderFormz,
      validBirthdayFormz: validBirthdayFormz ?? this.validBirthdayFormz,
      status: status ?? this.status,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegistrationState.fromJson(String source) =>
      RegistrationState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegistrationState(isLoadPage: $isLoadPage, isLoadNextPage: $isLoadNextPage, isValid: $isValid, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, genderSelected: $genderSelected, activitySelected: $activitySelected, dateRegModel: $dateRegModel, validNameFormz: $validNameFormz, validActivityFormz: $validActivityFormz, validGenderFormz: $validGenderFormz, validBirthdayFormz: $validBirthdayFormz, status: $status)';
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
        listEquals(other.genderSelected, genderSelected) &&
        listEquals(other.activitySelected, activitySelected) &&
        other.dateRegModel == dateRegModel &&
        other.validNameFormz == validNameFormz &&
        other.validActivityFormz == validActivityFormz &&
        other.validGenderFormz == validGenderFormz &&
        other.validBirthdayFormz == validBirthdayFormz &&
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
        genderSelected.hashCode ^
        activitySelected.hashCode ^
        dateRegModel.hashCode ^
        validNameFormz.hashCode ^
        validActivityFormz.hashCode ^
        validGenderFormz.hashCode ^
        validBirthdayFormz.hashCode ^
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
      'genderSelected': genderSelected,
      'activitySelected': activitySelected,
      'dateRegModel': dateRegModel.toMap(),
      'validNameFormz': validNameFormz.value,
      'validGenderFormz': validGenderFormz.value.name,
      'validActivityFormz': validActivityFormz.value.name,
      'validBirthdayFormz': validBirthdayFormz.value,
      'status': status.index,
    };
  }

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
    final validBirthday = map['validBirthdayFormz'].toString();
    // ignore: unused_local_variable
    ValidBirthdayFormz validBirthdayFormz;
    if (validBirthday.isEmpty) {
      validBirthdayFormz = const ValidBirthdayFormz.pure();
    } else {
      validBirthdayFormz = ValidBirthdayFormz.dirty(validBirthday);
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
      // custom
      validBirthdayFormz: const ValidBirthdayFormz.pure(),
      // validBirthdayFormz: validBirthdayFormz,
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