// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayProductsModel _$$_DayProductsModelFromJson(Map<String, dynamic> json) =>
    _$_DayProductsModel(
      date: json['date'] as String,
      firstBreakfast: (json['firstBreakfast'] as List<dynamic>)
          .map((e) => AddedProductSubModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      secondBreakfast: (json['secondBreakfast'] as List<dynamic>)
          .map((e) => AddedProductSubModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lunch: (json['lunch'] as List<dynamic>)
          .map((e) => AddedProductSubModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      afternoonSnack: (json['afternoonSnack'] as List<dynamic>)
          .map((e) => AddedProductSubModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dinner: (json['dinner'] as List<dynamic>)
          .map((e) => AddedProductSubModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bedtimeSnack: (json['bedtimeSnack'] as List<dynamic>)
          .map((e) => AddedProductSubModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DayProductsModelToJson(_$_DayProductsModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'firstBreakfast': instance.firstBreakfast.map((e) => e.toJson()).toList(),
      'secondBreakfast':
          instance.secondBreakfast.map((e) => e.toJson()).toList(),
      'lunch': instance.lunch.map((e) => e.toJson()).toList(),
      'afternoonSnack': instance.afternoonSnack.map((e) => e.toJson()).toList(),
      'dinner': instance.dinner.map((e) => e.toJson()).toList(),
      'bedtimeSnack': instance.bedtimeSnack.map((e) => e.toJson()).toList(),
    };

_$_AddedProductSubModel _$$_AddedProductSubModelFromJson(
        Map<String, dynamic> json) =>
    _$_AddedProductSubModel(
      idProduct: json['idProduct'] as int,
      weight: json['weight'] as int,
      dateMilliSecondAdded: json['dateMilliSecondAdded'] as int,
    );

Map<String, dynamic> _$$_AddedProductSubModelToJson(
        _$_AddedProductSubModel instance) =>
    <String, dynamic>{
      'idProduct': instance.idProduct,
      'weight': instance.weight,
      'dateMilliSecondAdded': instance.dateMilliSecondAdded,
    };
