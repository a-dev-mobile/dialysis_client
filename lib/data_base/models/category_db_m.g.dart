// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_db_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDbModel _$$_CategoryDbModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryDbModel(
      id: json['id'] as int,
      id_category: json['id_category'] as int,
      ru_name: json['ru_name'] as String? ?? '',
      en_name: json['en_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_CategoryDbModelToJson(_$_CategoryDbModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_category': instance.id_category,
      'ru_name': instance.ru_name,
      'en_name': instance.en_name,
    };
