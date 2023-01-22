// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dialysis/data_base/data_base.dart';
import 'package:flutter/foundation.dart';

@immutable
class SearchModel {
  /* type: List<data> */
  final List<FoodDbModel> products;
  /* type: List<data> */
  final List<CategoryDbModel> categories;
  // end

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const SearchModel({
    required this.products,
    required this.categories,
  });
  /*
   factory SearchModel.init() => SearchModel(
        products: const [],
        categories: const [],
      ); 
  */

  SearchModel copyWith({
    List<FoodDbModel>? products,
    List<CategoryDbModel>? categories,
  }) {
    return SearchModel(
      products: products ?? this.products,
      categories: categories ?? this.categories,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'products': products.map((e) => e.toJson()).toList(),
      'categories': categories.map((e) => e.toJson()).toList(),
    };
  }

  factory SearchModel.fromMap(Map<String, dynamic> map) {
    return SearchModel(
      products: (map['products'] as List<dynamic>)
          .map((e) => FoodDbModel.fromMap(e as Map<String, dynamic>))
          .toList(),
      categories: (map['categories'] as List<dynamic>)
          .map((e) => CategoryDbModel.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }
  @override
  String toString() {
    return 'SearchModel(products: $products, categories: $categories, )';
  }

  String toJson() => json.encode(toMap());

  factory SearchModel.fromJson(String source) =>
      SearchModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchModel &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(products),
        const DeepCollectionEquality().hash(categories),
      ]);
}
