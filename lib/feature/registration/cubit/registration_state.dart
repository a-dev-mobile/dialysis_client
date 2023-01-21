// part of 'registration_cubit.dart';

// /// RegistrationS data class
// @freezed
// class RegistrationState with _$RegistrationState {
//   const factory RegistrationState({
//     @Default(false) bool isLoadPage,
//     @Default(false) bool isLoadNextPage,
//     @Default(false) bool isValid,
//     @Default([false, false]) List<bool> activitySelected,
//     @Default([false, false]) List<bool> genderSelected,
//     @Default([false, false]) List<bool> hypertensionSelected,
//     @Default([false, false]) List<bool> diabetesSelected,
//     @Default(DateRegModel()) DateRegModel dateRegModel,
//     //
//     @_ValidNameConv()
//     @Default(ValidNameFormz.pure())
//         ValidNameFormz validNameFormz,
//     //
//     @_ValidActivityConv()
//     @Default(ValidActivityFormz.pure())
//         ValidActivityFormz validActivityFormz,
//     //
//     @_ValidGenderConv()
//     @Default(ValidGenderFormz.pure())
//         ValidGenderFormz validGenderFormz,
//     //
//     @_ValidBirthdayConv()
//     @Default(ValidBirthdayFormz.pure())
//         ValidBirthdayFormz validBirthdayFormz,
//     //
//     @_ValidHeightConv()
//     @Default(ValidHeightFormz.pure())
//         ValidHeightFormz validHeightFormz,
//     //
//     @_ValidWeightConv()
//     @Default(ValidWeightFormz.pure())
//         ValidWeightFormz validWeightFormz,
//     //
//     @_ValidCkdConv() @Default(ValidCkdFormz.pure())
//     ValidCkdFormz validCkdFormz,
//     //
//     @_ValidCreatinineConv()
//     @Default(ValidCreatinineFormz.pure())
//         ValidCreatinineFormz validCreatinineFormz,
//     //
//     @_ValidHypertensionConv()
//     @Default(ValidHypertensionFormz.pure())
//         ValidHypertensionFormz validHypertensionFormz,

//     //
//     @_ValidDiabetesConv()
//     @Default(ValidDiabetesFormz.pure())
//         ValidDiabetesFormz validDiabetesFormz,
//     //
//     @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
//     String? daySelected,
//     String? yearSelected,
//     String? monthSelected,
//     required List<String> heightList,
//     required List<bool> ckdSelected,
//   }) = _RegistrationState;

//   /// Generate RegistrationS class from Map<String, Object?>
//   factory RegistrationState.fromJson(Map<String, Object?> json) =>
//       _$RegistrationStateFromJson(json);
// }

// // ******************************
// class _ValidActivityConv
//     implements JsonConverter<ValidActivityFormz, Map<String, dynamic>> {
//   const _ValidActivityConv();

//   @override
//   ValidActivityFormz fromJson(Map<String, dynamic> json) {
//     final value = ActivityEnum.fromValue(json['ValidActivityFormz'].toString());

//     return value == ActivityEnum.none
//         ? const ValidActivityFormz.pure()
//         : ValidActivityFormz.dirty(value);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidActivityFormz v) {
//     return <String, dynamic>{'ValidActivityFormz': v.value.name};
//   }
// }

// // ******************************
// class _ValidDiabetesConv
//     implements JsonConverter<ValidDiabetesFormz, Map<String, dynamic>> {
//   const _ValidDiabetesConv();

//   @override
//   ValidDiabetesFormz fromJson(Map<String, dynamic> json) {
//     final value = DiabetesEnum.fromValue(json['ValidDiabetesFormz'].toString());

//     return value == DiabetesEnum.none
//         ? const ValidDiabetesFormz.pure()
//         : ValidDiabetesFormz.dirty(value);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidDiabetesFormz v) {
//     return <String, dynamic>{'ValidDiabetesFormz': v.value.name};
//   }
// }

// // ******************************
// class _ValidHypertensionConv
//     implements JsonConverter<ValidHypertensionFormz, Map<String, dynamic>> {
//   const _ValidHypertensionConv();

//   @override
//   ValidHypertensionFormz fromJson(Map<String, dynamic> json) {
//     final value =
//         HypertensionEnum.fromValue(json['ValidHypertensionFormz'].toString());

//     return value == HypertensionEnum.none
//         ? const ValidHypertensionFormz.pure()
//         : ValidHypertensionFormz.dirty(value);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidHypertensionFormz v) {
//     return <String, dynamic>{'ValidHypertensionFormz': v.value.name};
//   }
// }

// // ******************************
// class _ValidCkdConv
//     implements JsonConverter<ValidCkdFormz, Map<String, dynamic>> {
//   const _ValidCkdConv();

//   @override
//   ValidCkdFormz fromJson(Map<String, dynamic> json) {
//     final value = CkdEnum.fromValue(json['ValidCkdFormz'].toString());

//     return value == CkdEnum.none
//         ? const ValidCkdFormz.pure()
//         : ValidCkdFormz.dirty(value);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidCkdFormz v) {
//     return <String, dynamic>{'ValidCkdFormz': v.value.name};
//   }
// }

// // ******************************
// class _ValidGenderConv
//     implements JsonConverter<ValidGenderFormz, Map<String, dynamic>> {
//   const _ValidGenderConv();

//   @override
//   ValidGenderFormz fromJson(Map<String, dynamic> json) {
//     final value = GenderEnum.fromValue(json['ValidGenderFormz'].toString());

//     return value == GenderEnum.none
//         ? const ValidGenderFormz.pure()
//         : ValidGenderFormz.dirty(value);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidGenderFormz v) {
//     return <String, dynamic>{'ValidGenderFormz': v.value.name};
//   }
// }

// // ******************************
// class _ValidNameConv
//     implements JsonConverter<ValidNameFormz, Map<String, dynamic>> {
//   const _ValidNameConv();

//   @override
//   ValidNameFormz fromJson(Map<String, dynamic> json) {
//     final result = json['ValidNameFormz'].toString();
//     if (result.isEmpty) return const ValidNameFormz.pure();

//     return ValidNameFormz.dirty(result);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidNameFormz v) {
//     return <String, dynamic>{'ValidNameFormz': v.value};
//   }
// }

// // ******************************
// class _ValidBirthdayConv
//     implements JsonConverter<ValidBirthdayFormz, Map<String, dynamic>> {
//   const _ValidBirthdayConv();

//   @override
//   ValidBirthdayFormz fromJson(Map<String, dynamic> json) {
//     final result = json['ValidBirthdayFormz'].toString();
//     if (result.isEmpty) return const ValidBirthdayFormz.pure();

//     return ValidBirthdayFormz.dirty(result);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidBirthdayFormz v) {
//     return <String, dynamic>{'ValidBirthdayFormz': v.value};
//   }
// }

// // ******************************
// class _ValidHeightConv
//     implements JsonConverter<ValidHeightFormz, Map<String, dynamic>> {
//   const _ValidHeightConv();

//   @override
//   ValidHeightFormz fromJson(Map<String, dynamic>? json) {
//     final result = json['ValidHeightFormz'].toString();
//     if (result == null) return const ValidHeightFormz.pure();

//     return ValidHeightFormz.dirty(result);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidHeightFormz v) {
//     return <String, dynamic>{'ValidHeightFormz': v.value};
//   }
// }

// // ******************************
// class _ValidWeightConv
//     implements JsonConverter<ValidWeightFormz, Map<String, dynamic>> {
//   const _ValidWeightConv();

//   @override
//   ValidWeightFormz fromJson(Map<String, dynamic>? json) {
//     final result = json?['ValidWeightFormz'] as double?;
//     if (result == null) return const ValidWeightFormz.pure();

//     return ValidWeightFormz.pure(value: result);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidWeightFormz v) {
//     return <String, dynamic>{'ValidWeightFormz': v.value};
//   }
// }

// // ******************************
// class _ValidCreatinineConv
//     implements JsonConverter<ValidCreatinineFormz, Map<String, dynamic>> {
//   const _ValidCreatinineConv();

//   @override
//   ValidCreatinineFormz fromJson(Map<String, dynamic>? json) {
//     final result = json?['ValidCreatinineFormz'] as double?;
//     if (result == null) return const ValidCreatinineFormz.pure();

//     return ValidCreatinineFormz.pure(value: result);
//   }

//   @override
//   Map<String, dynamic> toJson(ValidCreatinineFormz v) {
//     return <String, dynamic>{'ValidCreatinineFormz': v.value};
//   }
// }
// // part of 'registration_c.dart';

// // @immutable
// // class RegistrationState  {
// //   // init: false
// //   final bool isLoadPage;
// //   // init: false
// //   final bool isLoadNextPage;
// //   // init: false
// //   final bool isValid;
// //   // init: const [false, false]
// //   final List<bool> activitySelected;
// //   // init: const [false, false]
// //   final List<bool> genderSelected;
// //   //
// //   final String? daySelected;
// //   //
// //   final String? yearSelected;
// //   //
// //   final String? monthSelected;
// //   //
// //   final List<String> heightList;
// //   //
// //   final List<bool> ckdSelected;
// //   // init: const [false, false]
// //   final List<bool> hypertensionSelected;
// //   // init: const [false, false]
// //   final List<bool> diabetesSelected;

// //   // init: const DateRegModel() | type: DateRegModel  |  toMap: dateRegModel.toMap() | fromMap: DateRegModel.fromMap(map['dateRegModel'] as Map<String, dynamic>)
// //   final DateRegModel dateRegModel;

// //   // init: const ValidNameFormz.pure() | type: ValidNameFormz  |  toMap: validNameFormz.value | fromMap: _HelperFromMap.getValueName(map['validNameFormz'])
// //   final ValidNameFormz validNameFormz;

// //   // init: const ValidActivityFormz.pure() | type: ValidActivityFormz | toMap: validActivityFormz.value.name | fromMap:_HelperFromMap.getActivity(map['validActivityFormz'])
// //   final ValidActivityFormz validActivityFormz;

// //   // init: const ValidGenderFormz.pure() | type: ValidGenderFormz | toMap: validGenderFormz.value.name | fromMap: _HelperFromMap.getGender(map['validGenderFormz'])
// //   final ValidGenderFormz validGenderFormz;

// //   // init: const ValidBirthdayFormz.pure()| type: ValidBirthdayFormz | toMap: validBirthdayFormz.value | fromMap: _HelperFromMap.getBirthday(map['validBirthdayFormz'])
// //   final ValidBirthdayFormz validBirthdayFormz;

// //   // init: const ValidHeightFormz.pure()| type: ValidHeightFormz | toMap: validHeightFormz.value | fromMap: _HelperFromMap.getHeight(map['validHeightFormz'])
// //   final ValidHeightFormz validHeightFormz;

// //   // init: const ValidWeightFormz.pure()| type: ValidWeightFormz | toMap: validWeightFormz.value | fromMap: _HelperFromMap.getWeight(map['validWeightFormz'])
// //   final ValidWeightFormz validWeightFormz;

// //   // init: const ValidCkdFormz.pure() | type: ValidCkdFormz | toMap: validCkdFormz.value.name | fromMap: _HelperFromMap.getCkd(map['validCkdFormz'])
// //   final ValidCkdFormz validCkdFormz;

// //   // init: const ValidCreatinineFormz.pure()| type: ValidCreatinineFormz | toMap: validCreatinineFormz.value | fromMap: _HelperFromMap.getCreatinine(map['validCreatinineFormz'])
// //   final ValidCreatinineFormz validCreatinineFormz;

// //   // init: const ValidHypertensionFormz.pure()| type: ValidHypertensionFormz | toMap: validHypertensionFormz.value.name | fromMap: _HelperFromMap.getHypertension(map['validHypertensionFormz'])
// //   final ValidHypertensionFormz validHypertensionFormz;

// //   // init: const ValidDiabetesFormz.pure()| type: ValidDiabetesFormz | toMap: validDiabetesFormz.value.name | fromMap: _HelperFromMap.getDiabetes(map['validDiabetesFormz'])
// //   final ValidDiabetesFormz validDiabetesFormz;

// //   // init: FormzSubmissionStatus.initial |type: enum
// //   final FormzSubmissionStatus status;

// //   /* end */

// //   // GENERATED CODE - DO NOT MODIFY BY HAND

// //   const RegistrationState({
// //     this.isLoadPage = false,
// //     this.isLoadNextPage = false,
// //     this.isValid = false,
// //     this.activitySelected = const [false, false],
// //     this.genderSelected = const [false, false],
// //     this.daySelected,
// //     this.yearSelected,
// //     this.monthSelected,
// //     required this.heightList,
// //     required this.ckdSelected,
// //     this.hypertensionSelected = const [false, false],
// //     this.diabetesSelected = const [false, false],
// //     this.dateRegModel = const DateRegModel(),
// //     this.validNameFormz = const ValidNameFormz.pure(),
// //     this.validActivityFormz = const ValidActivityFormz.pure(),
// //     this.validGenderFormz = const ValidGenderFormz.pure(),
// //     this.validBirthdayFormz = const ValidBirthdayFormz.pure(),
// //     this.validHeightFormz = const ValidHeightFormz.pure(),
// //     this.validWeightFormz = const ValidWeightFormz.pure(),
// //     this.validCkdFormz = const ValidCkdFormz.pure(),
// //     this.validCreatinineFormz = const ValidCreatinineFormz.pure(),
// //     this.validHypertensionFormz = const ValidHypertensionFormz.pure(),
// //     this.validDiabetesFormz = const ValidDiabetesFormz.pure(),
// //     this.status = FormzSubmissionStatus.initial,
// //   });
// // /*
// //    factory RegistrationState.init() => const RegistrationState(
// //         isLoadPage: false,
// //         isLoadNextPage: false,
// //         isValid: false,
// //         activitySelected: const const [false, false],
// //         genderSelected: const const [false, false],
// //         heightList: const [],
// //         ckdSelected: const [],
// //         hypertensionSelected: const const [false, false],
// //         diabetesSelected: const const [false, false],
// //         dateRegModel: const DateRegModel(),
// //         validNameFormz: const ValidNameFormz.pure(),
// //         validActivityFormz: const ValidActivityFormz.pure(),
// //         validGenderFormz: const ValidGenderFormz.pure(),
// //         validBirthdayFormz: const ValidBirthdayFormz.pure(),
// //         validHeightFormz: const ValidHeightFormz.pure(),
// //         validWeightFormz: const ValidWeightFormz.pure(),
// //         validCkdFormz: const ValidCkdFormz.pure(),
// //         validCreatinineFormz: const ValidCreatinineFormz.pure(),
// //         validHypertensionFormz: const ValidHypertensionFormz.pure(),
// //         validDiabetesFormz: const ValidDiabetesFormz.pure(),
// //         status: FormzSubmissionStatus.initial,
// //       );
// // */

// //   RegistrationState copyWith({
// //     bool? isLoadPage,
// //     bool? isLoadNextPage,
// //     bool? isValid,
// //     List<bool>? activitySelected,
// //     List<bool>? genderSelected,
// //     String? daySelected,
// //     String? yearSelected,
// //     String? monthSelected,
// //     List<String>? heightList,
// //     List<bool>? ckdSelected,
// //     List<bool>? hypertensionSelected,
// //     List<bool>? diabetesSelected,
// //     DateRegModel? dateRegModel,
// //     ValidNameFormz? validNameFormz,
// //     ValidActivityFormz? validActivityFormz,
// //     ValidGenderFormz? validGenderFormz,
// //     ValidBirthdayFormz? validBirthdayFormz,
// //     ValidHeightFormz? validHeightFormz,
// //     ValidWeightFormz? validWeightFormz,
// //     ValidCkdFormz? validCkdFormz,
// //     ValidCreatinineFormz? validCreatinineFormz,
// //     ValidHypertensionFormz? validHypertensionFormz,
// //     ValidDiabetesFormz? validDiabetesFormz,
// //     FormzSubmissionStatus? status,
// //   }) {
// //     return RegistrationState(
// //       isLoadPage: isLoadPage ?? this.isLoadPage,
// //       isLoadNextPage: isLoadNextPage ?? this.isLoadNextPage,
// //       isValid: isValid ?? this.isValid,
// //       activitySelected: activitySelected ?? this.activitySelected,
// //       genderSelected: genderSelected ?? this.genderSelected,
// //       daySelected: daySelected ?? this.daySelected,
// //       yearSelected: yearSelected ?? this.yearSelected,
// //       monthSelected: monthSelected ?? this.monthSelected,
// //       heightList: heightList ?? this.heightList,
// //       ckdSelected: ckdSelected ?? this.ckdSelected,
// //       hypertensionSelected: hypertensionSelected ?? this.hypertensionSelected,
// //       diabetesSelected: diabetesSelected ?? this.diabetesSelected,
// //       dateRegModel: dateRegModel ?? this.dateRegModel,
// //       validNameFormz: validNameFormz ?? this.validNameFormz,
// //       validActivityFormz: validActivityFormz ?? this.validActivityFormz,
// //       validGenderFormz: validGenderFormz ?? this.validGenderFormz,
// //       validBirthdayFormz: validBirthdayFormz ?? this.validBirthdayFormz,
// //       validHeightFormz: validHeightFormz ?? this.validHeightFormz,
// //       validWeightFormz: validWeightFormz ?? this.validWeightFormz,
// //       validCkdFormz: validCkdFormz ?? this.validCkdFormz,
// //       validCreatinineFormz: validCreatinineFormz ?? this.validCreatinineFormz,
// //       validHypertensionFormz: validHypertensionFormz ?? this.validHypertensionFormz,
// //       validDiabetesFormz: validDiabetesFormz ?? this.validDiabetesFormz,
// //       status: status ?? this.status,
// //     );
// //   }

// //   Map<String, dynamic> toMap() {
// //     return <String, dynamic>{
// //       'isLoadPage': isLoadPage,
// //       'isLoadNextPage': isLoadNextPage,
// //       'isValid': isValid,
// //       'activitySelected': activitySelected,
// //       'genderSelected': genderSelected,
// //       'daySelected': daySelected,
// //       'yearSelected': yearSelected,
// //       'monthSelected': monthSelected,
// //       'heightList': heightList,
// //       'ckdSelected': ckdSelected,
// //       'hypertensionSelected': hypertensionSelected,
// //       'diabetesSelected': diabetesSelected,
// //       'dateRegModel': dateRegModel.toMap(),
// //       'validNameFormz': validNameFormz.value,
// //       'validActivityFormz': validActivityFormz.value.name,
// //       'validGenderFormz': validGenderFormz.value.name,
// //       'validBirthdayFormz': validBirthdayFormz.value,
// //       'validHeightFormz': validHeightFormz.value,
// //       'validWeightFormz': validWeightFormz.value,
// //       'validCkdFormz': validCkdFormz.value.name,
// //       'validCreatinineFormz': validCreatinineFormz.value,
// //       'validHypertensionFormz': validHypertensionFormz.value.name,
// //       'validDiabetesFormz': validDiabetesFormz.value.name,
// //       'status': status.index,
// //     };
// //   }

// //   factory RegistrationState.fromMap(Map<String, dynamic> map) {
// //     return RegistrationState(
// //       isLoadPage: map['isLoadPage'] as bool? ?? false,
// //       isLoadNextPage: map['isLoadNextPage'] as bool? ?? false,
// //       isValid: map['isValid'] as bool? ?? false,
// //       activitySelected: List<bool>.of(
// //         (map['activitySelected'] ?? const <bool>[]) as List<bool>,
// //       ),
// //       genderSelected: List<bool>.of(
// //         (map['genderSelected'] ?? const <bool>[]) as List<bool>,
// //       ),
// //       daySelected: map['daySelected'] as String?,
// //       yearSelected: map['yearSelected'] as String?,
// //       monthSelected: map['monthSelected'] as String?,
// //       heightList: (map['heightList'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
// //       ckdSelected: List<bool>.of(
// //         (map['ckdSelected'] ?? const <bool>[]) as List<bool>,
// //       ),
// //       hypertensionSelected: List<bool>.of(
// //         (map['hypertensionSelected'] ?? const <bool>[]) as List<bool>,
// //       ),
// //       diabetesSelected: List<bool>.of(
// //         (map['diabetesSelected'] ?? const <bool>[]) as List<bool>,
// //       ),
// //       dateRegModel: DateRegModel.fromMap(map['dateRegModel'] as Map<String, dynamic>),
// //       validNameFormz: _HelperFromMap.getValueName(map['validNameFormz']),
// //       validActivityFormz: _HelperFromMap.getActivity(map['validActivityFormz']),
// //       validGenderFormz: _HelperFromMap.getGender(map['validGenderFormz']),
// //       validBirthdayFormz: _HelperFromMap.getBirthday(map['validBirthdayFormz']),
// //       validHeightFormz: _HelperFromMap.getHeight(map['validHeightFormz']),
// //       validWeightFormz: _HelperFromMap.getWeight(map['validWeightFormz']),
// //       validCkdFormz: _HelperFromMap.getCkd(map['validCkdFormz']),
// //       validCreatinineFormz: _HelperFromMap.getCreatinine(map['validCreatinineFormz']),
// //       validHypertensionFormz: _HelperFromMap.getHypertension(map['validHypertensionFormz']),
// //       validDiabetesFormz: _HelperFromMap.getDiabetes(map['validDiabetesFormz']),
// //       status: FormzSubmissionStatus.values[map['status'] as int],
// //     );
// //   }
// //   @override
// //   String toString() {
// //     return 'RegistrationState(isLoadPage: $isLoadPage, isLoadNextPage: $isLoadNextPage, isValid: $isValid, activitySelected: $activitySelected, genderSelected: $genderSelected, daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, heightList: $heightList, ckdSelected: $ckdSelected, hypertensionSelected: $hypertensionSelected, diabetesSelected: $diabetesSelected, dateRegModel: $dateRegModel, validNameFormz: $validNameFormz, validActivityFormz: $validActivityFormz, validGenderFormz: $validGenderFormz, validBirthdayFormz: $validBirthdayFormz, validHeightFormz: $validHeightFormz, validWeightFormz: $validWeightFormz, validCkdFormz: $validCkdFormz, validCreatinineFormz: $validCreatinineFormz, validHypertensionFormz: $validHypertensionFormz, validDiabetesFormz: $validDiabetesFormz, status: $status, )';
// //   }
// //   String toJson() => json.encode(toMap());

// //   factory RegistrationState.fromJson(String source) => RegistrationState.fromMap(json.decode(source) as Map<String, dynamic>);

// //   @override
// //   bool operator ==(dynamic other) {
// //     return identical(this, other) ||
// //         (other.runtimeType == runtimeType &&
// //             other is RegistrationState &&
// //             (identical(other.isLoadPage, isLoadPage) || other.isLoadPage == isLoadPage) &&
// //             (identical(other.isLoadNextPage, isLoadNextPage) || other.isLoadNextPage == isLoadNextPage) &&
// //             (identical(other.isValid, isValid) || other.isValid == isValid) &&
// //             const DeepCollectionEquality().equals(other.activitySelected, activitySelected) &&
// //             const DeepCollectionEquality().equals(other.genderSelected, genderSelected) &&
// //             (identical(other.daySelected, daySelected) || other.daySelected == daySelected) &&
// //             (identical(other.yearSelected, yearSelected) || other.yearSelected == yearSelected) &&
// //             (identical(other.monthSelected, monthSelected) || other.monthSelected == monthSelected) &&
// //             const DeepCollectionEquality().equals(other.heightList, heightList) &&
// //             const DeepCollectionEquality().equals(other.ckdSelected, ckdSelected) &&
// //             const DeepCollectionEquality().equals(other.hypertensionSelected, hypertensionSelected) &&
// //             const DeepCollectionEquality().equals(other.diabetesSelected, diabetesSelected) &&
// //             (identical(other.dateRegModel, dateRegModel) || other.dateRegModel == dateRegModel) &&
// //             (identical(other.validNameFormz, validNameFormz) || other.validNameFormz == validNameFormz) &&
// //             (identical(other.validActivityFormz, validActivityFormz) || other.validActivityFormz == validActivityFormz) &&
// //             (identical(other.validGenderFormz, validGenderFormz) || other.validGenderFormz == validGenderFormz) &&
// //             (identical(other.validBirthdayFormz, validBirthdayFormz) || other.validBirthdayFormz == validBirthdayFormz) &&
// //             (identical(other.validHeightFormz, validHeightFormz) || other.validHeightFormz == validHeightFormz) &&
// //             (identical(other.validWeightFormz, validWeightFormz) || other.validWeightFormz == validWeightFormz) &&
// //             (identical(other.validCkdFormz, validCkdFormz) || other.validCkdFormz == validCkdFormz) &&
// //             (identical(other.validCreatinineFormz, validCreatinineFormz) || other.validCreatinineFormz == validCreatinineFormz) &&
// //             (identical(other.validHypertensionFormz, validHypertensionFormz) || other.validHypertensionFormz == validHypertensionFormz) &&
// //             (identical(other.validDiabetesFormz, validDiabetesFormz) || other.validDiabetesFormz == validDiabetesFormz) &&
// //             (identical(other.status, status) || other.status == status) );

// //   }

// //   @override
// //   int get hashCode => Object.hashAll([
// //         runtimeType,
// //         isLoadPage,
// //         isLoadNextPage,
// //         isValid,
// //         const DeepCollectionEquality().hash(activitySelected),
// //         const DeepCollectionEquality().hash(genderSelected),
// //         daySelected,
// //         yearSelected,
// //         monthSelected,
// //         const DeepCollectionEquality().hash(heightList),
// //         const DeepCollectionEquality().hash(ckdSelected),
// //         const DeepCollectionEquality().hash(hypertensionSelected),
// //         const DeepCollectionEquality().hash(diabetesSelected),
// //         dateRegModel,
// //         validNameFormz,
// //         validActivityFormz,
// //         validGenderFormz,
// //         validBirthdayFormz,
// //         validBirthdayFormz,
// //         validHeightFormz,
// //         validWeightFormz,
// //         validCkdFormz,
// //         validCreatinineFormz,
// //         validHypertensionFormz,
// //         validDiabetesFormz,
// //         status,
// // ]);
// // }
