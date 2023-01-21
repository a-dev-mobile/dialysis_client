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
type: model
*/
  final DateRegModel dateRegModel;
/* 
type: model
init: const ValidNameFormz.pure()
*/
  final ValidNameFormz validNameFormz;

/* 
type: model
init: const ValidActivityFormz.pure()
*/
  final ValidActivityFormz validActivityFormz;

/* 
type: model
init: const ValidGenderFormz.pure()
*/
  final ValidGenderFormz validGenderFormz;

/* 
type: model
init: const ValidBirthdayFormz.pure()
*/
  final ValidBirthdayFormz validBirthdayFormz;
/* 
type: model
init: const ValidHeightFormz.pure()
*/
  final ValidHeightFormz validHeightFormz;
/* 
type: model
init: const ValidWeightFormz.pure()
*/
  final ValidWeightFormz validWeightFormz;
/* 
type: model
init: const ValidCreatinineFormz.pure()
*/
  final ValidCreatinineFormz validCreatinineFormz;
/* 
type: model
init: const ValidHypertensionFormz.pure()
*/
  final ValidHypertensionFormz validHypertensionFormz;

/* 
type: model
init: const ValidDiabetesFormz.pure()
*/
  final ValidDiabetesFormz validDiabetesFormz;
/* 
type: model
init: const ValidCkdFormz.pure()
*/
  final ValidCkdFormz validCkdFormz;
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
    this.status = FormzSubmissionStatus.initial,
    this.daySelected,
    this.yearSelected,
    this.monthSelected,
    required this.heightList,
    required this.ckdSelected,
    this.diabetesSelected = const [false,false],
    required this.dateRegModel,
    this.validNameFormz = const ValidNameFormz.pure(),
    this.validActivityFormz = const ValidActivityFormz.pure(),
    this.validGenderFormz = const ValidGenderFormz.pure(),
    this.validBirthdayFormz = const ValidBirthdayFormz.pure(),
    this.validHeightFormz = const ValidHeightFormz.pure(),
    this.validWeightFormz = const ValidWeightFormz.pure(),
    this.validCreatinineFormz = const ValidCreatinineFormz.pure(),
    this.validHypertensionFormz = const ValidHypertensionFormz.pure(),
    this.validDiabetesFormz = const ValidDiabetesFormz.pure(),
    this.validCkdFormz = const ValidCkdFormz.pure(),
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
    FormzSubmissionStatus? status,
    String? daySelected,
    String? yearSelected,
    String? monthSelected,
    List<String>? heightList,
    List<bool>? ckdSelected,
    List<bool>? diabetesSelected,
    DateRegModel? dateRegModel,
    ValidNameFormz? validNameFormz,
    ValidActivityFormz? validActivityFormz,
    ValidGenderFormz? validGenderFormz,
    ValidBirthdayFormz? validBirthdayFormz,
    ValidHeightFormz? validHeightFormz,
    ValidWeightFormz? validWeightFormz,
    ValidCreatinineFormz? validCreatinineFormz,
    ValidHypertensionFormz? validHypertensionFormz,
    ValidDiabetesFormz? validDiabetesFormz,
    ValidCkdFormz? validCkdFormz,
  }) {
    return RegistrationState(
      isLoadPage: isLoadPage ?? this.isLoadPage, 
      isLoadNextPage: isLoadNextPage ?? this.isLoadNextPage, 
      isValid: isValid ?? this.isValid, 
      activitySelected: activitySelected ?? this.activitySelected, 
      genderSelected: genderSelected ?? this.genderSelected, 
      hypertensionSelected: hypertensionSelected ?? this.hypertensionSelected, 
      status: status ?? this.status, 
      daySelected: daySelected ?? this.daySelected, 
      yearSelected: yearSelected ?? this.yearSelected, 
      monthSelected: monthSelected ?? this.monthSelected, 
      heightList: heightList ?? this.heightList, 
      ckdSelected: ckdSelected ?? this.ckdSelected, 
      diabetesSelected: diabetesSelected ?? this.diabetesSelected, 
      dateRegModel: dateRegModel ?? this.dateRegModel, 
      validNameFormz: validNameFormz ?? this.validNameFormz, 
      validActivityFormz: validActivityFormz ?? this.validActivityFormz, 
      validGenderFormz: validGenderFormz ?? this.validGenderFormz, 
      validBirthdayFormz: validBirthdayFormz ?? this.validBirthdayFormz, 
      validHeightFormz: validHeightFormz ?? this.validHeightFormz, 
      validWeightFormz: validWeightFormz ?? this.validWeightFormz, 
      validCreatinineFormz: validCreatinineFormz ?? this.validCreatinineFormz, 
      validHypertensionFormz: validHypertensionFormz ?? this.validHypertensionFormz, 
      validDiabetesFormz: validDiabetesFormz ?? this.validDiabetesFormz, 
      validCkdFormz: validCkdFormz ?? this.validCkdFormz, 
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
      'status': status.index, 
      'daySelected': daySelected, 
      'yearSelected': yearSelected, 
      'monthSelected': monthSelected, 
      'heightList': heightList, 
      'ckdSelected': ckdSelected, 
      'diabetesSelected': diabetesSelected, 
      'dateRegModel': dateRegModel.toMap(), 
      'validNameFormz': validNameFormz.toMap(), 
      'validActivityFormz': validActivityFormz.toMap(), 
      'validGenderFormz': validGenderFormz.toMap(), 
      'validBirthdayFormz': validBirthdayFormz.toMap(), 
      'validHeightFormz': validHeightFormz.toMap(), 
      'validWeightFormz': validWeightFormz.toMap(), 
      'validCreatinineFormz': validCreatinineFormz.toMap(), 
      'validHypertensionFormz': validHypertensionFormz.toMap(), 
      'validDiabetesFormz': validDiabetesFormz.toMap(), 
      'validCkdFormz': validCkdFormz.toMap(), 
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
      status: FormzSubmissionStatus.values[map['status'] as int], 
      daySelected: map['daySelected'] as String?, 
      yearSelected: map['yearSelected'] as String?, 
      monthSelected: map['monthSelected'] as String?, 
      heightList: (map['heightList'] as List<dynamic>).map((e) => e as String).toList(), 
      ckdSelected: (map['ckdSelected'] as List<dynamic>).map((e) => e as bool).toList(), 
      diabetesSelected: (map['diabetesSelected'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? const [false,false], 
      dateRegModel: DateRegModel.fromMap(map['dateRegModel'] as Map<String, dynamic>), 
      validNameFormz: ValidNameFormz.fromMap(map['validNameFormz'] as Map<String, dynamic>), 
      validActivityFormz: ValidActivityFormz.fromMap(map['validActivityFormz'] as Map<String, dynamic>), 
      validGenderFormz: ValidGenderFormz.fromMap(map['validGenderFormz'] as Map<String, dynamic>), 
      validBirthdayFormz: ValidBirthdayFormz.fromMap(map['validBirthdayFormz'] as Map<String, dynamic>), 
      validHeightFormz: ValidHeightFormz.fromMap(map['validHeightFormz'] as Map<String, dynamic>), 
      validWeightFormz: ValidWeightFormz.fromMap(map['validWeightFormz'] as Map<String, dynamic>), 
      validCreatinineFormz: ValidCreatinineFormz.fromMap(map['validCreatinineFormz'] as Map<String, dynamic>), 
      validHypertensionFormz: ValidHypertensionFormz.fromMap(map['validHypertensionFormz'] as Map<String, dynamic>), 
      validDiabetesFormz: ValidDiabetesFormz.fromMap(map['validDiabetesFormz'] as Map<String, dynamic>), 
      validCkdFormz: ValidCkdFormz.fromMap(map['validCkdFormz'] as Map<String, dynamic>), 
    );
  }
  @override
  String toString() {
    return 'RegistrationState(isLoadPage: $isLoadPage, isLoadNextPage: $isLoadNextPage, isValid: $isValid, activitySelected: $activitySelected, genderSelected: $genderSelected, hypertensionSelected: $hypertensionSelected, status: $status, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, heightList: $heightList, ckdSelected: $ckdSelected, diabetesSelected: $diabetesSelected, dateRegModel: $dateRegModel, validNameFormz: $validNameFormz, validActivityFormz: $validActivityFormz, validGenderFormz: $validGenderFormz, validBirthdayFormz: $validBirthdayFormz, validHeightFormz: $validHeightFormz, validWeightFormz: $validWeightFormz, validCreatinineFormz: $validCreatinineFormz, validHypertensionFormz: $validHypertensionFormz, validDiabetesFormz: $validDiabetesFormz, validCkdFormz: $validCkdFormz, )';
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
            (identical(other.status, status) || other.status == status) && 
            (identical(other.daySelected, daySelected) || other.daySelected == daySelected) && 
            (identical(other.yearSelected, yearSelected) || other.yearSelected == yearSelected) && 
            (identical(other.monthSelected, monthSelected) || other.monthSelected == monthSelected) && 
            const DeepCollectionEquality().equals(other.heightList, heightList) && 
            const DeepCollectionEquality().equals(other.ckdSelected, ckdSelected) && 
            const DeepCollectionEquality().equals(other.diabetesSelected, diabetesSelected) && 
            (identical(other.dateRegModel, dateRegModel) || other.dateRegModel == dateRegModel) && 
            (identical(other.validNameFormz, validNameFormz) || other.validNameFormz == validNameFormz) && 
            (identical(other.validActivityFormz, validActivityFormz) || other.validActivityFormz == validActivityFormz) && 
            (identical(other.validGenderFormz, validGenderFormz) || other.validGenderFormz == validGenderFormz) && 
            (identical(other.validBirthdayFormz, validBirthdayFormz) || other.validBirthdayFormz == validBirthdayFormz) && 
            (identical(other.validHeightFormz, validHeightFormz) || other.validHeightFormz == validHeightFormz) && 
            (identical(other.validWeightFormz, validWeightFormz) || other.validWeightFormz == validWeightFormz) && 
            (identical(other.validCreatinineFormz, validCreatinineFormz) || other.validCreatinineFormz == validCreatinineFormz) && 
            (identical(other.validHypertensionFormz, validHypertensionFormz) || other.validHypertensionFormz == validHypertensionFormz) && 
            (identical(other.validDiabetesFormz, validDiabetesFormz) || other.validDiabetesFormz == validDiabetesFormz) && 
            (identical(other.validCkdFormz, validCkdFormz) || other.validCkdFormz == validCkdFormz) );

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
        status,
        daySelected,
        yearSelected,
        monthSelected,
        const DeepCollectionEquality().hash(heightList),
        const DeepCollectionEquality().hash(ckdSelected),
        const DeepCollectionEquality().hash(diabetesSelected),
        dateRegModel,
        validNameFormz,
        validActivityFormz,
        validGenderFormz,
        validBirthdayFormz,
        validHeightFormz,
        validWeightFormz,
        validCreatinineFormz,
        validHypertensionFormz,
        validDiabetesFormz,
        validCkdFormz,
]);
  }
