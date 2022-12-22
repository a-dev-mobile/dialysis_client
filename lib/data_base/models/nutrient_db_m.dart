// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class NutrientDbModel {
  final int id_nutrient;
  final int id_nutrient_type;
  final String nutrient;
  final String ru_name;
  final String en_name;
  final String ru_unit;
  final String en_unit;
  final double value;



  const NutrientDbModel({
    this.id_nutrient = 0,
    this.id_nutrient_type = 0,
    this.nutrient = '',
    this.ru_name = '',
    this.en_name = '',
    this.ru_unit = '',
    this.en_unit = '',
    this.value = -1,
  });

  NutrientDbModel copyWith({
    int? id_nutrient,
    int? id_nutrient_type,
    String? nutrient,
    String? ru_name,
    String? en_name,
    String? ru_unit,
    String? en_unit,
    double? value,
  }) {
    return NutrientDbModel(
      id_nutrient: id_nutrient ?? this.id_nutrient,
      id_nutrient_type: id_nutrient_type ?? this.id_nutrient_type,
      nutrient: nutrient ?? this.nutrient,
      ru_name: ru_name ?? this.ru_name,
      en_name: en_name ?? this.en_name,
      ru_unit: ru_unit ?? this.ru_unit,
      en_unit: en_unit ?? this.en_unit,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_nutrient': id_nutrient,
      'id_nutrient_type': id_nutrient_type,
      'nutrient': nutrient,
      'ru_name': ru_name,
      'en_name': en_name,
      'ru_unit': ru_unit,
      'en_unit': en_unit,
      'value': value,
    };
  }

  factory NutrientDbModel.fromMap(Map<String, dynamic> map) {
    return NutrientDbModel(
      id_nutrient: map['id_nutrient'] as int,
      id_nutrient_type: map['id_nutrient_type'] as int,
      nutrient: map['nutrient'] as String,
      ru_name: map['ru_name'] as String,
      en_name: map['en_name'] as String,
      ru_unit: map['ru_unit'] as String,
      en_unit: map['en_unit'] as String,
      value: map['value'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory NutrientDbModel.fromJson(String source) =>
      NutrientDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NutrientDbModel(id_nutrient: $id_nutrient, id_nutrient_type: $id_nutrient_type, nutrient: $nutrient, ru_name: $ru_name, en_name: $en_name, ru_unit: $ru_unit, en_unit: $en_unit, value: $value)';
  }

  @override
  bool operator ==(covariant NutrientDbModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id_nutrient == id_nutrient &&
      other.id_nutrient_type == id_nutrient_type &&
      other.nutrient == nutrient &&
      other.ru_name == ru_name &&
      other.en_name == en_name &&
      other.ru_unit == ru_unit &&
      other.en_unit == en_unit &&
      other.value == value;
  }

  @override
  int get hashCode {
    return id_nutrient.hashCode ^
      id_nutrient_type.hashCode ^
      nutrient.hashCode ^
      ru_name.hashCode ^
      en_name.hashCode ^
      ru_unit.hashCode ^
      en_unit.hashCode ^
      value.hashCode;
  }
}
