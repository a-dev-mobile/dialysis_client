import 'dart:convert';

import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';
import 'package:flutter/cupertino.dart';

@immutable
class AddedProductModel {    
  /*  */
  final int idProduct;
  /*  */
  final int weight;
/*  */
  final DateTime dateTime;
/*  type: enum*/
  final EatingEnum typeEating;

// end
   
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************
  
  const AddedProductModel({
    required this.idProduct,
    required this.weight,
    required this.dateTime,
    required this.typeEating,
  });
  /*
   factory AddedProductModel.init() => AddedProductModel(
        idProduct: 0,
        weight: 0,
        dateTime: DateTime.now(),
      ); 
  */
  
AddedProductModel copyWith({
    int? idProduct,
    int? weight,
    DateTime? dateTime,
    EatingEnum? typeEating,
  }) {
    return AddedProductModel(
      idProduct: idProduct ?? this.idProduct, 
      weight: weight ?? this.weight, 
      dateTime: dateTime ?? this.dateTime, 
      typeEating: typeEating ?? this.typeEating, 
    );
  }
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idProduct': idProduct, 
      'weight': weight, 
      'dateTime': dateTime.toIso8601String(), 
      'typeEating': typeEating.index, 
    };
  }
  
  factory AddedProductModel.fromMap(Map<String, dynamic> map) {
    return AddedProductModel(
      idProduct: map['idProduct'] as int, 
      weight: map['weight'] as int, 
      dateTime: DateTime.parse(map['dateTime'] as String), 
      typeEating: EatingEnum.values[map['typeEating'] as int], 
    );
  }
  @override
  String toString() {
    return 'AddedProductModel(idProduct: $idProduct, weight: $weight, dateTime: $dateTime, typeEating: $typeEating, )';
  }

  String toJson() => json.encode(toMap());
  
  factory AddedProductModel.fromJson(String source) => AddedProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddedProductModel &&
            (identical(other.idProduct, idProduct) || other.idProduct == idProduct) && 
            (identical(other.weight, weight) || other.weight == weight) && 
            (identical(other.dateTime, dateTime) || other.dateTime == dateTime) && 
            (identical(other.typeEating, typeEating) || other.typeEating == typeEating) );

  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idProduct,
        weight,
        dateTime,
        typeEating,
]);
  }
