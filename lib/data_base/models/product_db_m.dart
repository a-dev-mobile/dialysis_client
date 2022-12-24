// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars, non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'product_db_m.freezed.dart';
part 'product_db_m.g.dart';


@freezed
class ProductDbModel with _$ProductDbModel {
  const factory ProductDbModel({
    @Default(-1) int id,
     @Default(-1) int id_product,
     @Default('') String ru_name,
     @Default('') String en_name,
  }) = _ProductDbModel;


  factory ProductDbModel.fromJson(Map<String, dynamic> json) => _$ProductDbModelFromJson(json);
}
