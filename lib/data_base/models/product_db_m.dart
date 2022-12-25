import 'dart:convert';

// // ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars, non_constant_identifier_names

class ProductDbModel {

final int id;
final  int id_product;
final  String ru_name;
final  String en_name;
  ProductDbModel({
    this.id = -1,
    this.id_product = -1,
    this.ru_name = '',
    this.en_name = '',
  });


  ProductDbModel copyWith({
    int? id,
    int? id_product,
    String? ru_name,
    String? en_name,
  }) {
    return ProductDbModel(
      id: id ?? this.id,
      id_product: id_product ?? this.id_product,
      ru_name: ru_name ?? this.ru_name,
      en_name: en_name ?? this.en_name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'id_product': id_product,
      'ru_name': ru_name,
      'en_name': en_name,
    };
  }

  factory ProductDbModel.fromMap(Map<String, dynamic> map) {
    return ProductDbModel(
      id: map['id'] as int,
      id_product: map['id_product'] as int,
      ru_name: map['ru_name'] as String,
      en_name: map['en_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDbModel.fromJson(String source) => ProductDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductDbModel(id: $id, id_product: $id_product, ru_name: $ru_name, en_name: $en_name)';
  }

  @override
  bool operator ==(covariant ProductDbModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.id_product == id_product &&
      other.ru_name == ru_name &&
      other.en_name == en_name;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      id_product.hashCode ^
      ru_name.hashCode ^
      en_name.hashCode;
  }
}




// import 'package:flutter/foundation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';


// part 'product_db_m.freezed.dart';
// part 'product_db_m.g.dart';


// @freezed
// class ProductDbModel with _$ProductDbModel {
//   const factory ProductDbModel({
//     @Default(-1) int id,
//      @Default(-1) int id_product,
//      @Default('') String ru_name,
//      @Default('') String en_name,
//   }) = _ProductDbModel;


// //   factory ProductDbModel.fromJson(Map<String, dynamic> json) => _$ProductDbModelFromJson(json);
// // }
