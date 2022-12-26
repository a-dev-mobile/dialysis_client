// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrient_db_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutrientDbModel _$$_NutrientDbModelFromJson(Map<String, dynamic> json) =>
    _$_NutrientDbModel(
      id: json['id'] as int,
      id_nutrient: json['id_nutrient'] as int,
      nutrient: json['nutrient'] as String? ?? '',
      ru_name: json['ru_name'] as String? ?? '',
      en_name: json['en_name'] as String? ?? '',
      ru_unit: json['ru_unit'] as String? ?? '',
      en_unit: json['en_unit'] as String? ?? '',
    );

Map<String, dynamic> _$$_NutrientDbModelToJson(_$_NutrientDbModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_nutrient': instance.id_nutrient,
      'nutrient': instance.nutrient,
      'ru_name': instance.ru_name,
      'en_name': instance.en_name,
      'ru_unit': instance.ru_unit,
      'en_unit': instance.en_unit,
    };
