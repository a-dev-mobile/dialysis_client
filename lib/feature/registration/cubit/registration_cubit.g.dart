// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationState _$$_RegistrationStateFromJson(Map<String, dynamic> json) =>
    _$_RegistrationState(
      isLoadPage: json['isLoadPage'] as bool? ?? false,
      isLoadNextPage: json['isLoadNextPage'] as bool? ?? false,
      isValid: json['isValid'] as bool? ?? false,
      activitySelected: (json['activitySelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [false, false],
      genderSelected: (json['genderSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [false, false],
      hypertensionSelected: (json['hypertensionSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [false, false],
      diabetesSelected: (json['diabetesSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [false, false],
      dateRegModel: json['dateRegModel'] == null
          ? const DateRegModel()
          : DateRegModel.fromJson(json['dateRegModel'] as Map<String, dynamic>),
      validNameFormz: json['validNameFormz'] == null
          ? const ValidNameFormz.pure()
          : const _ValidNameConv()
              .fromJson(json['validNameFormz'] as Map<String, dynamic>),
      validActivityFormz: json['validActivityFormz'] == null
          ? const ValidActivityFormz.pure()
          : const _ValidActivityConv()
              .fromJson(json['validActivityFormz'] as Map<String, dynamic>),
      validGenderFormz: json['validGenderFormz'] == null
          ? const ValidGenderFormz.pure()
          : const _ValidGenderConv()
              .fromJson(json['validGenderFormz'] as Map<String, dynamic>),
      validBirthdayFormz: json['validBirthdayFormz'] == null
          ? const ValidBirthdayFormz.pure()
          : const _ValidBirthdayConv()
              .fromJson(json['validBirthdayFormz'] as Map<String, dynamic>),
      validHeightFormz: json['validHeightFormz'] == null
          ? const ValidHeightFormz.pure()
          : const _ValidHeightConv()
              .fromJson(json['validHeightFormz'] as Map<String, dynamic>),
      validWeightFormz: json['validWeightFormz'] == null
          ? const ValidWeightFormz.pure()
          : const _ValidWeightConv()
              .fromJson(json['validWeightFormz'] as Map<String, dynamic>),
      validCkdFormz: json['validCkdFormz'] == null
          ? const ValidCkdFormz.pure()
          : const _ValidCkdConv()
              .fromJson(json['validCkdFormz'] as Map<String, dynamic>),
      validCreatinineFormz: json['validCreatinineFormz'] == null
          ? const ValidCreatinineFormz.pure()
          : const _ValidCreatinineConv()
              .fromJson(json['validCreatinineFormz'] as Map<String, dynamic>),
      validHypertensionFormz: json['validHypertensionFormz'] == null
          ? const ValidHypertensionFormz.pure()
          : const _ValidHypertensionConv()
              .fromJson(json['validHypertensionFormz'] as Map<String, dynamic>),
      validDiabetesFormz: json['validDiabetesFormz'] == null
          ? const ValidDiabetesFormz.pure()
          : const _ValidDiabetesConv()
              .fromJson(json['validDiabetesFormz'] as Map<String, dynamic>),
      status:
          $enumDecodeNullable(_$FormzSubmissionStatusEnumMap, json['status']) ??
              FormzSubmissionStatus.initial,
      daySelected: json['daySelected'] as String?,
      yearSelected: json['yearSelected'] as String?,
      monthSelected: json['monthSelected'] as String?,
      heightList: (json['heightList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ckdSelected:
          (json['ckdSelected'] as List<dynamic>).map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$$_RegistrationStateToJson(
        _$_RegistrationState instance) =>
    <String, dynamic>{
      'isLoadPage': instance.isLoadPage,
      'isLoadNextPage': instance.isLoadNextPage,
      'isValid': instance.isValid,
      'activitySelected': instance.activitySelected,
      'genderSelected': instance.genderSelected,
      'hypertensionSelected': instance.hypertensionSelected,
      'diabetesSelected': instance.diabetesSelected,
      'dateRegModel': instance.dateRegModel,
      'validNameFormz': const _ValidNameConv().toJson(instance.validNameFormz),
      'validActivityFormz':
          const _ValidActivityConv().toJson(instance.validActivityFormz),
      'validGenderFormz':
          const _ValidGenderConv().toJson(instance.validGenderFormz),
      'validBirthdayFormz':
          const _ValidBirthdayConv().toJson(instance.validBirthdayFormz),
      'validHeightFormz':
          const _ValidHeightConv().toJson(instance.validHeightFormz),
      'validWeightFormz':
          const _ValidWeightConv().toJson(instance.validWeightFormz),
      'validCkdFormz': const _ValidCkdConv().toJson(instance.validCkdFormz),
      'validCreatinineFormz':
          const _ValidCreatinineConv().toJson(instance.validCreatinineFormz),
      'validHypertensionFormz': const _ValidHypertensionConv()
          .toJson(instance.validHypertensionFormz),
      'validDiabetesFormz':
          const _ValidDiabetesConv().toJson(instance.validDiabetesFormz),
      'status': _$FormzSubmissionStatusEnumMap[instance.status]!,
      'daySelected': instance.daySelected,
      'yearSelected': instance.yearSelected,
      'monthSelected': instance.monthSelected,
      'heightList': instance.heightList,
      'ckdSelected': instance.ckdSelected,
    };

const _$FormzSubmissionStatusEnumMap = {
  FormzSubmissionStatus.initial: 'initial',
  FormzSubmissionStatus.inProgress: 'inProgress',
  FormzSubmissionStatus.success: 'success',
  FormzSubmissionStatus.failure: 'failure',
  FormzSubmissionStatus.canceled: 'canceled',
};
