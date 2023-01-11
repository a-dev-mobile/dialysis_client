// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class DayProductsModel {
  // 2012-02-27
  final String date;
  final List<AddedProductSubModel> firstBreakfast;
  final List<AddedProductSubModel> secondBreakfast;
  final List<AddedProductSubModel> lunch;
  final List<AddedProductSubModel> afternoonSnack;
  final List<AddedProductSubModel> dinner;
  final List<AddedProductSubModel> bedtimeSnack;
  const DayProductsModel({
    required this.date,
    required this.firstBreakfast,
    required this.secondBreakfast,
    required this.lunch,
    required this.afternoonSnack,
    required this.dinner,
    required this.bedtimeSnack,
  });

  DayProductsModel copyWith({
    String? date,
    List<AddedProductSubModel>? firstBreakfast,
    List<AddedProductSubModel>? secondBreakfast,
    List<AddedProductSubModel>? lunch,
    List<AddedProductSubModel>? afternoonSnack,
    List<AddedProductSubModel>? dinner,
    List<AddedProductSubModel>? bedtimeSnack,
  }) {
    return DayProductsModel(
      date: date ?? this.date,
      firstBreakfast: firstBreakfast ?? this.firstBreakfast,
      secondBreakfast: secondBreakfast ?? this.secondBreakfast,
      lunch: lunch ?? this.lunch,
      afternoonSnack: afternoonSnack ?? this.afternoonSnack,
      dinner: dinner ?? this.dinner,
      bedtimeSnack: bedtimeSnack ?? this.bedtimeSnack,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'firstBreakfast': firstBreakfast.map((x) => x.toMap()).toList(),
      'secondBreakfast': secondBreakfast.map((x) => x.toMap()).toList(),
      'lunch': lunch.map((x) => x.toMap()).toList(),
      'afternoonSnack': afternoonSnack.map((x) => x.toMap()).toList(),
      'dinner': dinner.map((x) => x.toMap()).toList(),
      'bedtimeSnack': bedtimeSnack.map((x) => x.toMap()).toList(),
    };
  }

  factory DayProductsModel.fromMap(Map<String, dynamic> map) {
    return DayProductsModel(
      date: (map['date'] ?? '') as String,
      firstBreakfast: List<AddedProductSubModel>.from((map['firstBreakfast'] as List<int>).map<AddedProductSubModel>((x) => AddedProductSubModel.fromMap(x as Map<String,dynamic>),),),
      secondBreakfast: List<AddedProductSubModel>.from((map['secondBreakfast'] as List<int>).map<AddedProductSubModel>((x) => AddedProductSubModel.fromMap(x as Map<String,dynamic>),),),
      lunch: List<AddedProductSubModel>.from((map['lunch'] as List<int>).map<AddedProductSubModel>((x) => AddedProductSubModel.fromMap(x as Map<String,dynamic>),),),
      afternoonSnack: List<AddedProductSubModel>.from((map['afternoonSnack'] as List<int>).map<AddedProductSubModel>((x) => AddedProductSubModel.fromMap(x as Map<String,dynamic>),),),
      dinner: List<AddedProductSubModel>.from((map['dinner'] as List<int>).map<AddedProductSubModel>((x) => AddedProductSubModel.fromMap(x as Map<String,dynamic>),),),
      bedtimeSnack: List<AddedProductSubModel>.from((map['bedtimeSnack'] as List<int>).map<AddedProductSubModel>((x) => AddedProductSubModel.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory DayProductsModel.fromJson(String source) =>
      DayProductsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DayProductsModel(date: $date, firstBreakfast: $firstBreakfast, secondBreakfast: $secondBreakfast, lunch: $lunch, afternoonSnack: $afternoonSnack, dinner: $dinner, bedtimeSnack: $bedtimeSnack)';
  }

  @override
  bool operator ==(covariant DayProductsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.date == date &&
      listEquals(other.firstBreakfast, firstBreakfast) &&
      listEquals(other.secondBreakfast, secondBreakfast) &&
      listEquals(other.lunch, lunch) &&
      listEquals(other.afternoonSnack, afternoonSnack) &&
      listEquals(other.dinner, dinner) &&
      listEquals(other.bedtimeSnack, bedtimeSnack);
  }

  @override
  int get hashCode {
    return date.hashCode ^
      firstBreakfast.hashCode ^
      secondBreakfast.hashCode ^
      lunch.hashCode ^
      afternoonSnack.hashCode ^
      dinner.hashCode ^
      bedtimeSnack.hashCode;
  }
}

@immutable
class AddedProductSubModel {
  final int idProduct;
  final int weight;
  final int dateMilliSecondAdded;

  const AddedProductSubModel({
    required this.idProduct,
    required this.weight,
    required this.dateMilliSecondAdded,
  });

  AddedProductSubModel copyWith({
    int? idProduct,
    int? weight,
    int? dateMilliSecondAdded,
  }) {
    return AddedProductSubModel(
      idProduct: idProduct ?? this.idProduct,
      weight: weight ?? this.weight,
      dateMilliSecondAdded: dateMilliSecondAdded ?? this.dateMilliSecondAdded,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idProduct': idProduct,
      'weight': weight,
      'dateMilliSecondAdded': dateMilliSecondAdded,
    };
  }

  factory AddedProductSubModel.fromMap(Map<String, dynamic> map) {
    return AddedProductSubModel(
      idProduct: (map['idProduct'] ?? 0) as int,
      weight: (map['weight'] ?? 0) as int,
      dateMilliSecondAdded: (map['dateMilliSecondAdded'] ?? 0) as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddedProductSubModel.fromJson(String source) =>
      AddedProductSubModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AddedProductSubModel(idProduct: $idProduct, weight: $weight, dateMilliSecondAdded: $dateMilliSecondAdded)';

  @override
  bool operator ==(covariant AddedProductSubModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.idProduct == idProduct &&
      other.weight == weight &&
      other.dateMilliSecondAdded == dateMilliSecondAdded;
  }

  @override
  int get hashCode => idProduct.hashCode ^ weight.hashCode ^ dateMilliSecondAdded.hashCode;
}
