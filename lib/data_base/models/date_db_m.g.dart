// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_db_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateDbModel _$$_DateDbModelFromJson(Map<String, dynamic> json) =>
    _$_DateDbModel(
      id: json['id'] as int? ?? -1,
      ru_month: json['ru_month'] as String? ?? '',
      en_month: json['en_month'] as String? ?? '',
      year: json['year'] as int? ?? -1,
    );

Map<String, dynamic> _$$_DateDbModelToJson(_$_DateDbModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ru_month': instance.ru_month,
      'en_month': instance.en_month,
      'year': instance.year,
    };
