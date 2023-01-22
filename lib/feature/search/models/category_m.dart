// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class CategoryModel { 
  /* init: '' */
  final String name;
  /* init: false */
  final bool isActive;
  /* init: -1 */
  final int id;
// end
   
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************
  
  const CategoryModel({
    this.name = '',
    this.isActive = false,
    this.id = -1,
  });
  /*
   factory CategoryModel.init() => CategoryModel(
      ); 
  */
  
CategoryModel copyWith({
    String? name,
    bool? isActive,
    int? id,
  }) {
    return CategoryModel(
      name: name ?? this.name, 
      isActive: isActive ?? this.isActive, 
      id: id ?? this.id, 
    );
  }
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name, 
      'isActive': isActive, 
      'id': id, 
    };
  }
  
  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      name: map['name'] as String? ?? '' , 
      isActive: map['isActive'] as bool? ?? false, 
      id: map['id'] as int? ?? -1, 
    );
  }
  @override
  String toString() {
    return 'CategoryModel(name: $name, isActive: $isActive, id: $id, )';
  }

  String toJson() => json.encode(toMap());
  
  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryModel &&
            (identical(other.name, name) || other.name == name) && 
            (identical(other.isActive, isActive) || other.isActive == isActive) && 
            (identical(other.id, id) || other.id == id) );

  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        isActive,
        id,
]);
  }
