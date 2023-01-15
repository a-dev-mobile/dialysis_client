// part of 'registration_c.dart';

// @immutable
// class RegistrationState {
//   //
//   final bool isLoadPage;
//   //
//   final bool isLoadNextPage;
//   //
//   final bool isValid;
//   //
//   final List<bool> activitySelected;
//   //
//   final List<bool> genderSelected;
//   //
//   final String? daySelected;
//   //
//   final String? yearSelected;
//   //
//   final String? monthSelected;
//   //
//   final List<String> heightList;
//   //
//   final List<bool> ckdSelected;
//   //
//   final List<bool> hypertensionSelected;
//   //
//   final List<bool> diabetesSelected;
//   //

//   // toMap: dateRegModel.toMap()
//   final DateRegModel dateRegModel;
//   //
//   final ValidNameFormz validNameFormz;
//   //
//   final ValidActivityFormz validActivityFormz;
//   //
//   final ValidGenderFormz validGenderFormz;
//   //
//   final ValidBirthdayFormz validBirthdayFormz;
//   //
//   final ValidHeightFormz validHeightFormz;
//   //
//   final ValidWeightFormz validWeightFormz;
//   //
//   final ValidCkdFormz validCkdFormz;
//   //
//   final ValidCreatinineFormz validCreatinineFormz;
//   //
//   final ValidHypertensionFormz validHypertensionFormz;
//   //
//   final ValidDiabetesFormz validDiabetesFormz;
//   // type: Enum

//   final FormzSubmissionStatus status;
//   /* end */
//   const RegistrationState({
//     required this.isLoadPage,
//     required this.isLoadNextPage,
//     required this.isValid,
//     required this.activitySelected,
//     required this.genderSelected,
//     this.daySelected,
//     this.yearSelected,
//     this.monthSelected,
//     required this.heightList,
//     required this.ckdSelected,
//     required this.hypertensionSelected,
//     required this.diabetesSelected,
//     required this.dateRegModel,
//     required this.validNameFormz,
//     required this.validActivityFormz,
//     required this.validGenderFormz,
//     required this.validBirthdayFormz,
//     required this.validHeightFormz,
//     required this.validWeightFormz,
//     required this.validCkdFormz,
//     required this.validCreatinineFormz,
//     required this.validHypertensionFormz,
//     required this.validDiabetesFormz,
//     required this.status,
//   });

//   RegistrationState copyWith({
//     bool? isLoadPage,
//     bool? isLoadNextPage,
//     bool? isValid,
//     List<bool>? activitySelected,
//     List<bool>? genderSelected,
//     String? daySelected,
//     String? yearSelected,
//     String? monthSelected,
//     List<String>? heightList,
//     List<bool>? ckdSelected,
//     List<bool>? hypertensionSelected,
//     List<bool>? diabetesSelected,
//     DateRegModel? dateRegModel,
//     ValidNameFormz? validNameFormz,
//     ValidActivityFormz? validActivityFormz,
//     ValidGenderFormz? validGenderFormz,
//     ValidBirthdayFormz? validBirthdayFormz,
//     ValidHeightFormz? validHeightFormz,
//     ValidWeightFormz? validWeightFormz,
//     ValidCkdFormz? validCkdFormz,
//     ValidCreatinineFormz? validCreatinineFormz,
//     ValidHypertensionFormz? validHypertensionFormz,
//     ValidDiabetesFormz? validDiabetesFormz,
//     FormzSubmissionStatus? status,
//   }) {
//     return RegistrationState(
//       isLoadPage: isLoadPage ?? this.isLoadPage,
//       isLoadNextPage: isLoadNextPage ?? this.isLoadNextPage,
//       isValid: isValid ?? this.isValid,
//       activitySelected: activitySelected ?? this.activitySelected,
//       genderSelected: genderSelected ?? this.genderSelected,
//       daySelected: daySelected ?? this.daySelected,
//       yearSelected: yearSelected ?? this.yearSelected,
//       monthSelected: monthSelected ?? this.monthSelected,
//       heightList: heightList ?? this.heightList,
//       ckdSelected: ckdSelected ?? this.ckdSelected,
//       hypertensionSelected: hypertensionSelected ?? this.hypertensionSelected,
//       diabetesSelected: diabetesSelected ?? this.diabetesSelected,
//       dateRegModel: dateRegModel ?? this.dateRegModel,
//       validNameFormz: validNameFormz ?? this.validNameFormz,
//       validActivityFormz: validActivityFormz ?? this.validActivityFormz,
//       validGenderFormz: validGenderFormz ?? this.validGenderFormz,
//       validBirthdayFormz: validBirthdayFormz ?? this.validBirthdayFormz,
//       validHeightFormz: validHeightFormz ?? this.validHeightFormz,
//       validWeightFormz: validWeightFormz ?? this.validWeightFormz,
//       validCkdFormz: validCkdFormz ?? this.validCkdFormz,
//       validCreatinineFormz: validCreatinineFormz ?? this.validCreatinineFormz,
//       validHypertensionFormz:
//           validHypertensionFormz ?? this.validHypertensionFormz,
//       validDiabetesFormz: validDiabetesFormz ?? this.validDiabetesFormz,
//       status: status ?? this.status,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory RegistrationState.fromJson(String source) =>
//       RegistrationState.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'RegistrationState(isLoadPage: $isLoadPage, isLoadNextPage: $isLoadNextPage, isValid: $isValid, activitySelected: $activitySelected, genderSelected: $genderSelected, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, heightList: $heightList, ckdSelected: $ckdSelected, hypertensionSelected: $hypertensionSelected, diabetesSelected: $diabetesSelected, dateRegModel: $dateRegModel, validNameFormz: $validNameFormz, validActivityFormz: $validActivityFormz, validGenderFormz: $validGenderFormz, validBirthdayFormz: $validBirthdayFormz, validHeightFormz: $validHeightFormz, validWeightFormz: $validWeightFormz, validCkdFormz: $validCkdFormz, validCreatinineFormz: $validCreatinineFormz, validHypertensionFormz: $validHypertensionFormz, validDiabetesFormz: $validDiabetesFormz, status: $status)';
//   }

//   @override
//   bool operator ==(covariant RegistrationState other) {
//     if (identical(this, other)) return true;

//     return other.isLoadPage == isLoadPage &&
//         other.isLoadNextPage == isLoadNextPage &&
//         other.isValid == isValid &&
//         listEquals(other.activitySelected, activitySelected) &&
//         listEquals(other.genderSelected, genderSelected) &&
//         other.daySelected == daySelected &&
//         other.yearSelected == yearSelected &&
//         other.monthSelected == monthSelected &&
//         listEquals(other.heightList, heightList) &&
//         listEquals(other.ckdSelected, ckdSelected) &&
//         listEquals(other.hypertensionSelected, hypertensionSelected) &&
//         listEquals(other.diabetesSelected, diabetesSelected) &&
//         other.dateRegModel == dateRegModel &&
//         other.validNameFormz == validNameFormz &&
//         other.validActivityFormz == validActivityFormz &&
//         other.validGenderFormz == validGenderFormz &&
//         other.validBirthdayFormz == validBirthdayFormz &&
//         other.validHeightFormz == validHeightFormz &&
//         other.validWeightFormz == validWeightFormz &&
//         other.validCkdFormz == validCkdFormz &&
//         other.validCreatinineFormz == validCreatinineFormz &&
//         other.validHypertensionFormz == validHypertensionFormz &&
//         other.validDiabetesFormz == validDiabetesFormz &&
//         other.status == status;
//   }

//   @override
//   int get hashCode {
//     return isLoadPage.hashCode ^
//         isLoadNextPage.hashCode ^
//         isValid.hashCode ^
//         activitySelected.hashCode ^
//         genderSelected.hashCode ^
//         daySelected.hashCode ^
//         yearSelected.hashCode ^
//         monthSelected.hashCode ^
//         heightList.hashCode ^
//         ckdSelected.hashCode ^
//         hypertensionSelected.hashCode ^
//         diabetesSelected.hashCode ^
//         dateRegModel.hashCode ^
//         validNameFormz.hashCode ^
//         validActivityFormz.hashCode ^
//         validGenderFormz.hashCode ^
//         validBirthdayFormz.hashCode ^
//         validHeightFormz.hashCode ^
//         validWeightFormz.hashCode ^
//         validCkdFormz.hashCode ^
//         validCreatinineFormz.hashCode ^
//         validHypertensionFormz.hashCode ^
//         validDiabetesFormz.hashCode ^
//         status.hashCode;
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'isLoadPage': isLoadPage,
//       'isLoadNextPage': isLoadNextPage,
//       'isValid': isValid,
//       'activitySelected': activitySelected,
//       'genderSelected': genderSelected,
//       'daySelected': daySelected,
//       'yearSelected': yearSelected,
//       'monthSelected': monthSelected,
//       'heightList': heightList,
//       'ckdSelected': ckdSelected,
//       'hypertensionSelected': hypertensionSelected,
//       'diabetesSelected': diabetesSelected,
//       'dateRegModel': dateRegModel.toMap(),
//       'validNameFormz': validNameFormz.value,
//       'validActivityFormz': validActivityFormz.value.name,
//       'validGenderFormz': validGenderFormz.value.name,
//       'validBirthdayFormz': validBirthdayFormz.value,
//       'validHeightFormz': validHeightFormz.value,
//       'validWeightFormz': validWeightFormz.value,
//       'validCkdFormz': validCkdFormz.value.name,
//       'validCreatinineFormz': validCreatinineFormz.value,
//       'validHypertensionFormz': validHypertensionFormz.value.name,
//       'validDiabetesFormz': validDiabetesFormz.value.name,
//       'status': status.index,
//     };
//   }

//   factory RegistrationState.fromMap(Map<String, dynamic> map) {
//     return RegistrationState(
//       isLoadPage: (map['isLoadPage'] ?? false) as bool,
//       isLoadNextPage: (map['isLoadNextPage'] ?? false) as bool,
//       isValid: (map['isValid'] ?? false) as bool,
//       activitySelected: List<bool>.of(
//         (map['activitySelected'] ?? const <bool>[]) as List<bool>,
//       ),
//       genderSelected: List<bool>.of(
//         (map['genderSelected'] ?? const <bool>[]) as List<bool>,
//       ),
//       daySelected:
//           map['daySelected'] != null ? map['daySelected'] as String : null,
//       yearSelected:
//           map['yearSelected'] != null ? map['yearSelected'] as String : null,
//       monthSelected:
//           map['monthSelected'] != null ? map['monthSelected'] as String : null,
//       heightList: List<String>.of(
//         (map['heightList'] ?? const <String>[]) as List<String>,
//       ),
//       ckdSelected:
//           List<bool>.of((map['ckdSelected'] ?? const <bool>[]) as List<bool>),
//       hypertensionSelected: List<bool>.of(
//         (map['hypertensionSelected'] ?? const <bool>[]) as List<bool>,
//       ),
//       diabetesSelected: List<bool>.of(
//         (map['diabetesSelected'] ?? const <bool>[]) as List<bool>,
//       ),
//       dateRegModel:
//           DateRegModel.fromMap(map['dateRegModel'] as Map<String, dynamic>),
//       validNameFormz: _HelperFromMap.getValueName(map),
//       validActivityFormz: _HelperFromMap.getValueActivity(map),
//       validGenderFormz: _HelperFromMap.getGender(map),
//       validBirthdayFormz: const ValidBirthdayFormz.pure(),
//       validHeightFormz: _HelperFromMap.getHeight(map),
//       validWeightFormz: _HelperFromMap.getWeight(map),
//       validCkdFormz: _HelperFromMap.getCkd(map),
//       validCreatinineFormz: _HelperFromMap.getCreatinine(map),
//       validHypertensionFormz: _HelperFromMap.getHypertension(map),
//       validDiabetesFormz: _HelperFromMap.getValueDiabetes(map),
//       status: FormzSubmissionStatus.values[(map['status'] ?? 0) as int],
//     );
//   }
// }
