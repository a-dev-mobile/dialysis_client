// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class CategoryDbModel { 
  /*  */
  final int id;
  /*  */
  final int id_category;
  /*  */
  final String ru_name;
  /*  */
  final String en_name;
  // end
   
  // GENERATED CODE BELOW - DO NOT MODIFY
  
  const CategoryDbModel({
    required this.id,
    required this.id_category,
    required this.ru_name,
    required this.en_name,
  });
  /*
   factory CategoryDbModel.init() => CategoryDbModel(
        id: 0,
        id_category: 0,
        ru_name: '',
        en_name: '',
      ); 
  */
  
CategoryDbModel copyWith({
    int? id,
    int? id_category,
    String? ru_name,
    String? en_name,
  }) {
    return CategoryDbModel(
      id: id ?? this.id, 
      id_category: id_category ?? this.id_category, 
      ru_name: ru_name ?? this.ru_name, 
      en_name: en_name ?? this.en_name, 
    );
  }
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id, 
      'id_category': id_category, 
      'ru_name': ru_name, 
      'en_name': en_name, 
    };
  }
  
  factory CategoryDbModel.fromMap(Map<String, dynamic> map) {
    return CategoryDbModel(
      id: map['id'] as int, 
      id_category: map['id_category'] as int, 
      ru_name: map['ru_name'] as String, 
      en_name: map['en_name'] as String, 
    );
  }
  @override
  String toString() {
    return 'CategoryDbModel(id: $id, id_category: $id_category, ru_name: $ru_name, en_name: $en_name, )';
  }

  String toJson() => json.encode(toMap());
  
  factory CategoryDbModel.fromJson(String source) => CategoryDbModel.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryDbModel &&
            (identical(other.id, id) || other.id == id) && 
            (identical(other.id_category, id_category) || other.id_category == id_category) && 
            (identical(other.ru_name, ru_name) || other.ru_name == ru_name) && 
            (identical(other.en_name, en_name) || other.en_name == en_name) );

  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        id_category,
        ru_name,
        en_name,
]);
  }
