// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_db_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SourceDbModel _$$_SourceDbModelFromJson(Map<String, dynamic> json) =>
    _$_SourceDbModel(
      id: json['id'] as int,
      id_source: json['id_source'] as int,
      ru_name: json['ru_name'] as String? ?? '',
      en_name: json['en_name'] as String? ?? '',
      ru_abbrev: json['ru_abbrev'] as String? ?? '',
      en_abbrev: json['en_abbrev'] as String? ?? '',
    );

Map<String, dynamic> _$$_SourceDbModelToJson(_$_SourceDbModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_source': instance.id_source,
      'ru_name': instance.ru_name,
      'en_name': instance.en_name,
      'ru_abbrev': instance.ru_abbrev,
      'en_abbrev': instance.en_abbrev,
    };
