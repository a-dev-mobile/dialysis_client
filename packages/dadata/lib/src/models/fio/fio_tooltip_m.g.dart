// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fio_tooltip_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FioTooltip _$$_FioTooltipFromJson(Map<String, dynamic> json) =>
    _$_FioTooltip(
      (json['suggestions'] as List<dynamic>)
          .map((e) => SuggestionsFio.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FioTooltipToJson(_$_FioTooltip instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions,
    };

_$_Suggestions _$$_SuggestionsFromJson(Map<String, dynamic> json) =>
    _$_Suggestions(
      json['value'] as String,
      json['unrestricted_value'] as String,
      DataFio.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SuggestionsToJson(_$_Suggestions instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unrestricted_value': instance.unrestricted_value,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['surname'] as String?,
      json['name'] as String?,
      json['patronymic'] as String?,
      json['gender'] as String?,
      json['source'] as String?,
      json['qc'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'surname': instance.surname,
      'name': instance.name,
      'patronymic': instance.patronymic,
      'gender': instance.gender,
      'source': instance.source,
      'qc': instance.qc,
    };
