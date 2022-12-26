// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';



part 'category_db_m.freezed.dart';
part 'category_db_m.g.dart';

/// CategoryM data class
@freezed
class CategoryDbModel with _$CategoryDbModel {
  const factory CategoryDbModel({
    required int id,
    required int id_category,
    @Default('') String ru_name,
    @Default('') String en_name,

  }) = _CategoryDbModel;

  /// Generate CategoryM class from Map<String, Object?>
  factory CategoryDbModel.fromJson(Map<String, Object?> json) =>
      _$CategoryDbModelFromJson(json);
}
