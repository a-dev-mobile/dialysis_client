// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient_db_m.freezed.dart';
part 'nutrient_db_m.g.dart';


@freezed
class NutrientDbModel with _$NutrientDbModel {
  const factory NutrientDbModel({
    required int id,
    required int id_nutrient,
    @Default('') String nutrient,
    @Default('') String ru_name,
    @Default('') String en_name,
    @Default('') String ru_unit,
    @Default('') String en_unit,
  }) = _NutrientDbModel;

  /// Generate CategoryM class from Map<String, Object?>
  factory NutrientDbModel.fromJson(Map<String, Object?> json) =>
      _$NutrientDbModelFromJson(json);
}
