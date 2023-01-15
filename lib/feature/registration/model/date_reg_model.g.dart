// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_reg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateRegModel _$$_DateRegModelFromJson(Map<String, dynamic> json) =>
    _$_DateRegModel(
      days:
          (json['days'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      months: (json['months'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      years:
          (json['years'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$_DateRegModelToJson(_$_DateRegModel instance) =>
    <String, dynamic>{
      'days': instance.days,
      'months': instance.months,
      'years': instance.years,
    };
