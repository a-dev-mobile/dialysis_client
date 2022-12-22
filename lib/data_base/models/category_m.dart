// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class CategoryDbModel {
  final int id_category;
  final String ru_name;
  final String en_name;

  const CategoryDbModel({
    this.id_category = 0,
    this.ru_name = '',
    this.en_name = '',
  });

  CategoryDbModel copyWith({
    int? id_category,
    String? ru_name,
    String? en_name,
  }) {
    return CategoryDbModel(
      id_category: id_category ?? this.id_category,
      ru_name: ru_name ?? this.ru_name,
      en_name: en_name ?? this.en_name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_category': id_category,
      'ru_name': ru_name,
      'en_name': en_name,
    };
  }

  factory CategoryDbModel.fromMap(Map<String, dynamic> map) {
    return CategoryDbModel(
      id_category: map['id_category'] as int,
      ru_name: map['ru_name'] as String,
      en_name: map['en_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryDbModel.fromJson(String source) =>
      CategoryDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoryDbModel(id_category: $id_category, ru_name: $ru_name, en_name: $en_name)';

  @override
  bool operator ==(covariant CategoryDbModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id_category == id_category &&
      other.ru_name == ru_name &&
      other.en_name == en_name;
  }

  @override
  int get hashCode => id_category.hashCode ^ ru_name.hashCode ^ en_name.hashCode;
}
