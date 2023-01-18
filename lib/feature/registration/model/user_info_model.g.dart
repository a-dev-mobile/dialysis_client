// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoModel _$$_UserInfoModelFromJson(Map<String, dynamic> json) =>
    _$_UserInfoModel(
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumEnumMap, json['gender']),
      activity: $enumDecode(_$ActivityEnumEnumMap, json['activity']),
      birthday: DateTime.parse(json['birthday'] as String),
      height: json['height'] as int,
      weight: (json['weight'] as num).toDouble(),
      ckd: $enumDecode(_$CkdEnumEnumMap, json['ckd']),
      creatinin: (json['creatinin'] as num).toDouble(),
      created: DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$$_UserInfoModelToJson(_$_UserInfoModel instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'gender': _$GenderEnumEnumMap[instance.gender]!,
    'activity': _$ActivityEnumEnumMap[instance.activity]!,
    'birthday': instance.birthday.toIso8601String(),
    'height': instance.height,
    'weight': instance.weight,
    'ckd': _$CkdEnumEnumMap[instance.ckd]!,
    'creatinin': instance.creatinin,
    'created': instance.created.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('updated', instance.updated?.toIso8601String());
  return val;
}

const _$GenderEnumEnumMap = {
  GenderEnum.female: 'female',
  GenderEnum.male: 'male',
  GenderEnum.none: 'none',
};

const _$ActivityEnumEnumMap = {
  ActivityEnum.normal: 'normal',
  ActivityEnum.light: 'light',
  ActivityEnum.none: 'none',
};

const _$CkdEnumEnumMap = {
  CkdEnum.one: 'one',
  CkdEnum.two: 'two',
  CkdEnum.threeA: 'threeA',
  CkdEnum.threeB: 'threeB',
  CkdEnum.four: 'four',
  CkdEnum.five: 'five',
  CkdEnum.notKnow: 'notKnow',
  CkdEnum.none: 'none',
};
