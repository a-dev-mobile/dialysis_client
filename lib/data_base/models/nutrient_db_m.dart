// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class NutrientDbModel {
/*  */
  final int id;
  /*  */
  final int id_nutrient;
  /*  */
  final String nutrient;
  /*  */
  final String ru_name;
  /*  */
  final String en_name;
  /*  */
  final String ru_unit;
  /*  */
  final String en_unit;

// end

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const NutrientDbModel({
    required this.id,
    required this.id_nutrient,
    required this.nutrient,
    required this.ru_name,
    required this.en_name,
    required this.ru_unit,
    required this.en_unit,
  });
  /*
   factory NutrientDbModel.init() => NutrientDbModel(
        id: 0,
        id_nutrient: 0,
        nutrient: '',
        ru_name: '',
        en_name: '',
        ru_unit: '',
        en_unit: '',
      ); 
  */

  NutrientDbModel copyWith({
    int? id,
    int? id_nutrient,
    String? nutrient,
    String? ru_name,
    String? en_name,
    String? ru_unit,
    String? en_unit,
  }) {
    return NutrientDbModel(
      id: id ?? this.id,
      id_nutrient: id_nutrient ?? this.id_nutrient,
      nutrient: nutrient ?? this.nutrient,
      ru_name: ru_name ?? this.ru_name,
      en_name: en_name ?? this.en_name,
      ru_unit: ru_unit ?? this.ru_unit,
      en_unit: en_unit ?? this.en_unit,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'id_nutrient': id_nutrient,
      'nutrient': nutrient,
      'ru_name': ru_name,
      'en_name': en_name,
      'ru_unit': ru_unit,
      'en_unit': en_unit,
    };
  }

  factory NutrientDbModel.fromMap(Map<String, dynamic> map) {
    return NutrientDbModel(
      id: map['id'] as int,
      id_nutrient: map['id_nutrient'] as int,
      nutrient: map['nutrient'] as String,
      ru_name: map['ru_name'] as String,
      en_name: map['en_name'] as String,
      ru_unit: map['ru_unit'] as String,
      en_unit: map['en_unit'] as String,
    );
  }
  @override
  String toString() {
    return 'NutrientDbModel(id: $id, id_nutrient: $id_nutrient, nutrient: $nutrient, ru_name: $ru_name, en_name: $en_name, ru_unit: $ru_unit, en_unit: $en_unit, )';
  }

  String toJson() => json.encode(toMap());

  factory NutrientDbModel.fromJson(String source) =>
      NutrientDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NutrientDbModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_nutrient, id_nutrient) ||
                other.id_nutrient == id_nutrient) &&
            (identical(other.nutrient, nutrient) ||
                other.nutrient == nutrient) &&
            (identical(other.ru_name, ru_name) || other.ru_name == ru_name) &&
            (identical(other.en_name, en_name) || other.en_name == en_name) &&
            (identical(other.ru_unit, ru_unit) || other.ru_unit == ru_unit) &&
            (identical(other.en_unit, en_unit) || other.en_unit == en_unit));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        id_nutrient,
        nutrient,
        ru_name,
        en_name,
        ru_unit,
        en_unit,
      ]);
}
