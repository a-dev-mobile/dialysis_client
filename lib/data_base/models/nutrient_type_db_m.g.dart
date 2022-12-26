// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrient_type_db_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutrientTypeDbModel _$$_NutrientTypeDbModelFromJson(
        Map<String, dynamic> json) =>
    _$_NutrientTypeDbModel(
      id: json['id'] as int,
      id_nutrient_type: json['id_nutrient_type'] as int,
      ru_name: json['ru_name'] as String? ?? '',
      en_name: json['en_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_NutrientTypeDbModelToJson(
        _$_NutrientTypeDbModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_nutrient_type': instance.id_nutrient_type,
      'ru_name': instance.ru_name,
      'en_name': instance.en_name,
    };
