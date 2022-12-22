// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class ProductDbModel {
  final int id_product;
  final String ru_name;
  final String en_name;

  ProductDbModel({
    this.id_product = 0,
    this.ru_name = '',
    this.en_name = '',
  });

  ProductDbModel copyWith({
    int? id_product,
    String? ru_name,
    String? en_name,
  }) {
    return ProductDbModel(
      id_product: id_product ?? this.id_product,
      ru_name: ru_name ?? this.ru_name,
      en_name: en_name ?? this.en_name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_product': id_product,
      'ru_name': ru_name,
      'en_name': en_name,
    };
  }

  factory ProductDbModel.fromMap(Map<String, dynamic> map) {
    return ProductDbModel(
      id_product: map['id_product'] as int,
      ru_name: map['ru_name'] as String,
      en_name: map['en_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDbModel.fromJson(String source) =>
      ProductDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ProductDbModel(id_product: $id_product, ru_name: $ru_name, en_name: $en_name)';

  @override
  bool operator ==(covariant ProductDbModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id_product == id_product &&
      other.ru_name == ru_name &&
      other.en_name == en_name;
  }

  @override
  int get hashCode => id_product.hashCode ^ ru_name.hashCode ^ en_name.hashCode;
}
