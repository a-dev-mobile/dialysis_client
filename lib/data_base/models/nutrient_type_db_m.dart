// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class NutrientTypeDbModel {
  final int id_nutrient_type;
  final int ru_name;
  final String en_name;
  NutrientTypeDbModel({
    this.id_nutrient_type = 0,
    this.ru_name = 0,
    this.en_name = '',
  });


  NutrientTypeDbModel copyWith({
    int? id_nutrient_type,
    int? ru_name,
    String? en_name,
  }) {
    return NutrientTypeDbModel(
      id_nutrient_type: id_nutrient_type ?? this.id_nutrient_type,
      ru_name: ru_name ?? this.ru_name,
      en_name: en_name ?? this.en_name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_nutrient_type': id_nutrient_type,
      'ru_name': ru_name,
      'en_name': en_name,
    };
  }

  factory NutrientTypeDbModel.fromMap(Map<String, dynamic> map) {
    return NutrientTypeDbModel(
      id_nutrient_type: map['id_nutrient_type'] as int,
      ru_name: map['ru_name'] as int,
      en_name: map['en_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NutrientTypeDbModel.fromJson(String source) => NutrientTypeDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'NutrientTypeDbModel(id_nutrient_type: $id_nutrient_type, ru_name: $ru_name, en_name: $en_name)';

  @override
  bool operator ==(covariant NutrientTypeDbModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id_nutrient_type == id_nutrient_type &&
      other.ru_name == ru_name &&
      other.en_name == en_name;
  }

  @override
  int get hashCode => id_nutrient_type.hashCode ^ ru_name.hashCode ^ en_name.hashCode;
}
