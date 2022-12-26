// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_db_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDbModel _$$_ProductDbModelFromJson(Map<String, dynamic> json) =>
    _$_ProductDbModel(
      id: json['id'] as int,
      id_product: json['id_product'] as int,
      ru_name: json['ru_name'] as String? ?? '',
      en_name: json['en_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_ProductDbModelToJson(_$_ProductDbModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_product': instance.id_product,
      'ru_name': instance.ru_name,
      'en_name': instance.en_name,
    };
