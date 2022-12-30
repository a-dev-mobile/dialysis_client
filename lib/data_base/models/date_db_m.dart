// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_db_m.freezed.dart';
part 'date_db_m.g.dart';

@freezed
class DateDbModel with _$DateDbModel {
  const factory DateDbModel({
    @Default(-1) int id,
    @Default('') String ru_month,
    @Default('') String en_month,
    @Default(-1) int year,
  }) = _DateDbModel;

  /// Generate CategoryM class from Map<String, Object?>
  factory DateDbModel.fromJson(Map<String, Object?> json) =>
      _$DateDbModelFromJson(json);
}
