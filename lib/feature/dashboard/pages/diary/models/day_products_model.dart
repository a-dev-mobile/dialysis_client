

import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_products_model.freezed.dart';
part 'day_products_model.g.dart';

/// DayProductsModel data class
@freezed
class DayProductsModel with _$DayProductsModel {
  const factory DayProductsModel({
    required String date,
    required List<AddedProductSubModel> firstBreakfast,
    required List<AddedProductSubModel> secondBreakfast,
    required List<AddedProductSubModel> lunch,
    required List<AddedProductSubModel> afternoonSnack,
    required List<AddedProductSubModel> dinner,
    required List<AddedProductSubModel> bedtimeSnack,
  }) = _DayProductsModel;


  factory DayProductsModel.fromJson(Map<String, Object?> json) =>
      _$DayProductsModelFromJson(json);
}


@freezed
class AddedProductSubModel with _$AddedProductSubModel {
  const factory AddedProductSubModel({
    required int idProduct,
    required int weight,
    required int dateMilliSecondAdded,
  }) = _AddedProductSubModel;

 
  factory AddedProductSubModel.fromJson(Map<String, Object?> json) =>
      _$AddedProductSubModelFromJson(json);
}
