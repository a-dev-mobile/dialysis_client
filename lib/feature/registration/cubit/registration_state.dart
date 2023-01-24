import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';

@immutable
class RegistrationState { 
/* init: false */
  final bool isLoadPage;
/* init: false */
  final bool isLoadNextPage;
/* init: false */
  final bool isValid;
/* init: const [false,false] */
  final List<bool> activitySelected;
/* init: const [false,false] */
  final List<bool> genderSelected;
/* init: const [false,false] */
  final List<bool> hypertensionSelected;
/* init: const [false,false,false,false] */
  final List<bool> dailyDiuresisSelected;
/* 
type: enum
init: FormzSubmissionStatus.initial
*/
  final FormzSubmissionStatus status;
  /*  */
  final String? daySelected;
  /*  */
  final String? yearSelected;
  /*  */
  final String? monthSelected;
  /*  */
  final List<String> heightList;
  /*  */
  final List<bool> ckdSelected;
  /*init: const [false,false]  */
  final List<bool> diabetesSelected;
/* 
type: data
*/
  final DateRegModel dateRegModel;
/* 
type: data
init: const ValidName.pure()
*/
  final ValidName validName;

/* 
type: data
init: const ValidActivity.pure()
*/
  final ValidActivity validActivity;

/* 
type: data
init: const ValidGender.pure()
*/
  final ValidGender validGender;

/* 
type: data
init: const ValidBirthday.pure()
*/
  final ValidBirthday validBirthday;
/* 
type: data
init: const ValidHeight.pure()
*/
  final ValidHeight validHeight;
/* 
type: data
init: const ValidWeight.pure()
*/
  final ValidWeight validWeight;

/* 
type: data
init: const ValidHypertension.pure()
*/
  final ValidHypertension validHypertension;

/* 
type: data
init: const ValidDiabetes.pure()
*/
  final ValidDiabetes validDiabetes;
/* 
type: data
init: const ValidCkd.pure()
*/
  final ValidCkd validCkd;

/* 
type: data
init: const ValidDailyDiuresis.pure()
*/
  final ValidDailyDiuresis validDailyDiuresis;

/* 
type: data
init: const ValidUrineOutput.pure()
*/
  final ValidUrineOutput validUrineOutput;
/* init: false */
  final bool isVisibleUrineOutput;
/* 
type: data
init: const ValidCreatinine.pure()
*/
  final ValidCreatinine validCreatinine;
  /* init: false */
  final bool isVisibleCreatinine;
  // end
   
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************
  
  const RegistrationState({
    this.isLoadPage = false,
    this.isLoadNextPage = false,
    this.isValid = false,
    this.activitySelected = const [false,false],
    this.genderSelected = const [false,false],
    this.hypertensionSelected = const [false,false],
    this.dailyDiuresisSelected = const [false,false,false,false],
    this.status = FormzSubmissionStatus.initial,
    this.daySelected,
    this.yearSelected,
    this.monthSelected,
    required this.heightList,
    required this.ckdSelected,
    this.diabetesSelected = const [false,false],
    required this.dateRegModel,
    this.validName = const ValidName.pure(),
    this.validActivity = const ValidActivity.pure(),
    this.validGender = const ValidGender.pure(),
    this.validBirthday = const ValidBirthday.pure(),
    this.validHeight = const ValidHeight.pure(),
    this.validWeight = const ValidWeight.pure(),
    this.validHypertension = const ValidHypertension.pure(),
    this.validDiabetes = const ValidDiabetes.pure(),
    this.validCkd = const ValidCkd.pure(),
    this.validDailyDiuresis = const ValidDailyDiuresis.pure(),
    this.validUrineOutput = const ValidUrineOutput.pure(),
    this.isVisibleUrineOutput = false,
    this.validCreatinine = const ValidCreatinine.pure(),
    this.isVisibleCreatinine = false,
  });
  /*
   factory RegistrationState.init() => RegistrationState(
        heightList: const [],
        ckdSelected: const [],
      ); 
  */
  
RegistrationState copyWith({
    bool? isLoadPage,
    bool? isLoadNextPage,
    bool? isValid,
    List<bool>? activitySelected,
    List<bool>? genderSelected,
    List<bool>? hypertensionSelected,
    List<bool>? dailyDiuresisSelected,
    FormzSubmissionStatus? status,
    String? daySelected,
    String? yearSelected,
    String? monthSelected,
    List<String>? heightList,
    List<bool>? ckdSelected,
    List<bool>? diabetesSelected,
    DateRegModel? dateRegModel,
    ValidName? validName,
    ValidActivity? validActivity,
    ValidGender? validGender,
    ValidBirthday? validBirthday,
    ValidHeight? validHeight,
    ValidWeight? validWeight,
    ValidHypertension? validHypertension,
    ValidDiabetes? validDiabetes,
    ValidCkd? validCkd,
    ValidDailyDiuresis? validDailyDiuresis,
    ValidUrineOutput? validUrineOutput,
    bool? isVisibleUrineOutput,
    ValidCreatinine? validCreatinine,
    bool? isVisibleCreatinine,
  }) {
    return RegistrationState(
      isLoadPage: isLoadPage ?? this.isLoadPage, 
      isLoadNextPage: isLoadNextPage ?? this.isLoadNextPage, 
      isValid: isValid ?? this.isValid, 
      activitySelected: activitySelected ?? this.activitySelected, 
      genderSelected: genderSelected ?? this.genderSelected, 
      hypertensionSelected: hypertensionSelected ?? this.hypertensionSelected, 
      dailyDiuresisSelected: dailyDiuresisSelected ?? this.dailyDiuresisSelected, 
      status: status ?? this.status, 
      daySelected: daySelected ?? this.daySelected, 
      yearSelected: yearSelected ?? this.yearSelected, 
      monthSelected: monthSelected ?? this.monthSelected, 
      heightList: heightList ?? this.heightList, 
      ckdSelected: ckdSelected ?? this.ckdSelected, 
      diabetesSelected: diabetesSelected ?? this.diabetesSelected, 
      dateRegModel: dateRegModel ?? this.dateRegModel, 
      validName: validName ?? this.validName, 
      validActivity: validActivity ?? this.validActivity, 
      validGender: validGender ?? this.validGender, 
      validBirthday: validBirthday ?? this.validBirthday, 
      validHeight: validHeight ?? this.validHeight, 
      validWeight: validWeight ?? this.validWeight, 
      validHypertension: validHypertension ?? this.validHypertension, 
      validDiabetes: validDiabetes ?? this.validDiabetes, 
      validCkd: validCkd ?? this.validCkd, 
      validDailyDiuresis: validDailyDiuresis ?? this.validDailyDiuresis, 
      validUrineOutput: validUrineOutput ?? this.validUrineOutput, 
      isVisibleUrineOutput: isVisibleUrineOutput ?? this.isVisibleUrineOutput, 
      validCreatinine: validCreatinine ?? this.validCreatinine, 
      isVisibleCreatinine: isVisibleCreatinine ?? this.isVisibleCreatinine, 
    );
  }
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoadPage': isLoadPage, 
      'isLoadNextPage': isLoadNextPage, 
      'isValid': isValid, 
      'activitySelected': activitySelected, 
      'genderSelected': genderSelected, 
      'hypertensionSelected': hypertensionSelected, 
      'dailyDiuresisSelected': dailyDiuresisSelected, 
      'status': status.index, 
      'daySelected': daySelected, 
      'yearSelected': yearSelected, 
      'monthSelected': monthSelected, 
      'heightList': heightList, 
      'ckdSelected': ckdSelected, 
      'diabetesSelected': diabetesSelected, 
      'dateRegModel': dateRegModel.toMap(), 
      'validName': validName.toMap(), 
      'validActivity': validActivity.toMap(), 
      'validGender': validGender.toMap(), 
      'validBirthday': validBirthday.toMap(), 
      'validHeight': validHeight.toMap(), 
      'validWeight': validWeight.toMap(), 
      'validHypertension': validHypertension.toMap(), 
      'validDiabetes': validDiabetes.toMap(), 
      'validCkd': validCkd.toMap(), 
      'validDailyDiuresis': validDailyDiuresis.toMap(), 
      'validUrineOutput': validUrineOutput.toMap(), 
      'isVisibleUrineOutput': isVisibleUrineOutput, 
      'validCreatinine': validCreatinine.toMap(), 
      'isVisibleCreatinine': isVisibleCreatinine, 
    };
  }
  
  factory RegistrationState.fromMap(Map<String, dynamic> map) {
    return RegistrationState(
      isLoadPage: map['isLoadPage'] as bool? ?? false, 
      isLoadNextPage: map['isLoadNextPage'] as bool? ?? false, 
      isValid: map['isValid'] as bool? ?? false, 
      activitySelected: (map['activitySelected'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? const [false,false], 
      genderSelected: (map['genderSelected'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? const [false,false], 
      hypertensionSelected: (map['hypertensionSelected'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? const [false,false], 
      dailyDiuresisSelected: (map['dailyDiuresisSelected'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? const [false,false,false,false], 
      status: FormzSubmissionStatus.values[map['status'] as int], 
      daySelected: map['daySelected'] as String?, 
      yearSelected: map['yearSelected'] as String?, 
      monthSelected: map['monthSelected'] as String?, 
      heightList: (map['heightList'] as List<dynamic>).map((e) => e as String).toList(), 
      ckdSelected: (map['ckdSelected'] as List<dynamic>).map((e) => e as bool).toList(), 
      diabetesSelected: (map['diabetesSelected'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? const [false,false], 
      dateRegModel: DateRegModel.fromMap(map['dateRegModel'] as Map<String, dynamic>), 
      validName: ValidName.fromMap(map['validName'] as Map<String, dynamic>), 
      validActivity: ValidActivity.fromMap(map['validActivity'] as Map<String, dynamic>), 
      validGender: ValidGender.fromMap(map['validGender'] as Map<String, dynamic>), 
      validBirthday: ValidBirthday.fromMap(map['validBirthday'] as Map<String, dynamic>), 
      validHeight: ValidHeight.fromMap(map['validHeight'] as Map<String, dynamic>), 
      validWeight: ValidWeight.fromMap(map['validWeight'] as Map<String, dynamic>), 
      validHypertension: ValidHypertension.fromMap(map['validHypertension'] as Map<String, dynamic>), 
      validDiabetes: ValidDiabetes.fromMap(map['validDiabetes'] as Map<String, dynamic>), 
      validCkd: ValidCkd.fromMap(map['validCkd'] as Map<String, dynamic>), 
      validDailyDiuresis: ValidDailyDiuresis.fromMap(map['validDailyDiuresis'] as Map<String, dynamic>), 
      validUrineOutput: ValidUrineOutput.fromMap(map['validUrineOutput'] as Map<String, dynamic>), 
      isVisibleUrineOutput: map['isVisibleUrineOutput'] as bool? ?? false, 
      validCreatinine: ValidCreatinine.fromMap(map['validCreatinine'] as Map<String, dynamic>), 
      isVisibleCreatinine: map['isVisibleCreatinine'] as bool? ?? false, 
    );
  }
  @override
  String toString() {
    return 'RegistrationState(isLoadPage: $isLoadPage, isLoadNextPage: $isLoadNextPage, isValid: $isValid, activitySelected: $activitySelected, genderSelected: $genderSelected, hypertensionSelected: $hypertensionSelected, dailyDiuresisSelected: $dailyDiuresisSelected, status: $status, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, heightList: $heightList, ckdSelected: $ckdSelected, diabetesSelected: $diabetesSelected, dateRegModel: $dateRegModel, validName: $validName, validActivity: $validActivity, validGender: $validGender, validBirthday: $validBirthday, validHeight: $validHeight, validWeight: $validWeight, validHypertension: $validHypertension, validDiabetes: $validDiabetes, validCkd: $validCkd, validDailyDiuresis: $validDailyDiuresis, validUrineOutput: $validUrineOutput, isVisibleUrineOutput: $isVisibleUrineOutput, validCreatinine: $validCreatinine, isVisibleCreatinine: $isVisibleCreatinine, )';
  }

  String toJson() => json.encode(toMap());
  
  factory RegistrationState.fromJson(String source) => RegistrationState.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationState &&
            (identical(other.isLoadPage, isLoadPage) || other.isLoadPage == isLoadPage) && 
            (identical(other.isLoadNextPage, isLoadNextPage) || other.isLoadNextPage == isLoadNextPage) && 
            (identical(other.isValid, isValid) || other.isValid == isValid) && 
            const DeepCollectionEquality().equals(other.activitySelected, activitySelected) && 
            const DeepCollectionEquality().equals(other.genderSelected, genderSelected) && 
            const DeepCollectionEquality().equals(other.hypertensionSelected, hypertensionSelected) && 
            const DeepCollectionEquality().equals(other.dailyDiuresisSelected, dailyDiuresisSelected) && 
            (identical(other.status, status) || other.status == status) && 
            (identical(other.daySelected, daySelected) || other.daySelected == daySelected) && 
            (identical(other.yearSelected, yearSelected) || other.yearSelected == yearSelected) && 
            (identical(other.monthSelected, monthSelected) || other.monthSelected == monthSelected) && 
            const DeepCollectionEquality().equals(other.heightList, heightList) && 
            const DeepCollectionEquality().equals(other.ckdSelected, ckdSelected) && 
            const DeepCollectionEquality().equals(other.diabetesSelected, diabetesSelected) && 
            (identical(other.dateRegModel, dateRegModel) || other.dateRegModel == dateRegModel) && 
            (identical(other.validName, validName) || other.validName == validName) && 
            (identical(other.validActivity, validActivity) || other.validActivity == validActivity) && 
            (identical(other.validGender, validGender) || other.validGender == validGender) && 
            (identical(other.validBirthday, validBirthday) || other.validBirthday == validBirthday) && 
            (identical(other.validHeight, validHeight) || other.validHeight == validHeight) && 
            (identical(other.validWeight, validWeight) || other.validWeight == validWeight) && 
            (identical(other.validHypertension, validHypertension) || other.validHypertension == validHypertension) && 
            (identical(other.validDiabetes, validDiabetes) || other.validDiabetes == validDiabetes) && 
            (identical(other.validCkd, validCkd) || other.validCkd == validCkd) && 
            (identical(other.validDailyDiuresis, validDailyDiuresis) || other.validDailyDiuresis == validDailyDiuresis) && 
            (identical(other.validUrineOutput, validUrineOutput) || other.validUrineOutput == validUrineOutput) && 
            (identical(other.isVisibleUrineOutput, isVisibleUrineOutput) || other.isVisibleUrineOutput == isVisibleUrineOutput) && 
            (identical(other.validCreatinine, validCreatinine) || other.validCreatinine == validCreatinine) && 
            (identical(other.isVisibleCreatinine, isVisibleCreatinine) || other.isVisibleCreatinine == isVisibleCreatinine) );

  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoadPage,
        isLoadNextPage,
        isValid,
        const DeepCollectionEquality().hash(activitySelected),
        const DeepCollectionEquality().hash(genderSelected),
        const DeepCollectionEquality().hash(hypertensionSelected),
        const DeepCollectionEquality().hash(dailyDiuresisSelected),
        status,
        daySelected,
        yearSelected,
        monthSelected,
        const DeepCollectionEquality().hash(heightList),
        const DeepCollectionEquality().hash(ckdSelected),
        const DeepCollectionEquality().hash(diabetesSelected),
        dateRegModel,
        validName,
        validActivity,
        validGender,
        validBirthday,
        validHeight,
        validWeight,
        validHypertension,
        validDiabetes,
        validCkd,
        validDailyDiuresis,
        validUrineOutput,
        isVisibleUrineOutput,
        validCreatinine,
        isVisibleCreatinine,
]);
  }
