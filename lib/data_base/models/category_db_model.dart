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
  final String name;


  // end
   
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************
  
  const CategoryDbModel({
    required this.id,
    required this.id_category,
    required this.name,
  });
  /*
   factory CategoryDbModel.init() => CategoryDbModel(
        id: 0,
        id_category: 0,
        name: '',
      ); 
  */
  
CategoryDbModel copyWith({
    int? id,
    int? id_category,
    String? name,
  }) {
    return CategoryDbModel(
      id: id ?? this.id, 
      id_category: id_category ?? this.id_category, 
      name: name ?? this.name, 
    );
  }
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id, 
      'id_category': id_category, 
      'name': name, 
    };
  }
  
  factory CategoryDbModel.fromMap(Map<String, dynamic> map) {
    return CategoryDbModel(
      id: map['id'] as int, 
      id_category: map['id_category'] as int, 
      name: map['name'] as String, 
    );
  }
  @override
  String toString() {
    return 'CategoryDbModel(id: $id, id_category: $id_category, name: $name, )';
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
            (identical(other.name, name) || other.name == name) );

  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        id_category,
        name,
]);
  }
