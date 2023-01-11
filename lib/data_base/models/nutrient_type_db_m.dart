// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient_type_db_m.freezed.dart';
part 'nutrient_type_db_m.g.dart';


@freezed
class NutrientTypeDbModel with _$NutrientTypeDbModel {
  const factory NutrientTypeDbModel({
    required int id,
    required int id_nutrient_type,
    @Default('') String ru_name,
    @Default('') String en_name,

  }) = _NutrientTypeDbModel;

  /// Generate CategoryM class from Map<String, Object?>
  factory NutrientTypeDbModel.fromJson(Map<String, Object?> json) =>
      _$NutrientTypeDbModelFromJson(json);
}
