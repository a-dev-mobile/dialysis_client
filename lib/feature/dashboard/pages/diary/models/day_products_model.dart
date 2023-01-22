import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';
import 'package:meta/meta.dart';

@immutable
class DayProductsModel {
  /*  */
  final DateTime date;
  /*  type: List<data>  */
  final List<AddedProductModel> listAddedProduct;
  // end

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const DayProductsModel({
    required this.date,
    required this.listAddedProduct,
  });
  /*
   factory DayProductsModel.init() => DayProductsModel(
        date: DateTime.now(),
        listAddedProduct: const [],
      ); 
  */

  DayProductsModel copyWith({
    DateTime? date,
    List<AddedProductModel>? listAddedProduct,
  }) {
    return DayProductsModel(
      date: date ?? this.date,
      listAddedProduct: listAddedProduct ?? this.listAddedProduct,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date.toIso8601String(),
      'listAddedProduct': listAddedProduct.map((e) => e.toJson()).toList(),
    };
  }

  factory DayProductsModel.fromMap(Map<String, dynamic> map) {
    return DayProductsModel(
      date: DateTime.parse(map['date'] as String),
      listAddedProduct: (map['listAddedProduct'] as List<dynamic>)
          .map((e) => AddedProductModel.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }
  @override
  String toString() {
    return 'DayProductsModel(date: $date, listAddedProduct: $listAddedProduct, )';
  }

  String toJson() => json.encode(toMap());

  factory DayProductsModel.fromJson(String source) =>
      DayProductsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DayProductsModel &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.listAddedProduct, listAddedProduct));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        date,
        const DeepCollectionEquality().hash(listAddedProduct),
      ]);
}
