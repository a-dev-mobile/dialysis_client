// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_db_m.freezed.dart';
part 'source_db_m.g.dart';

@freezed
class SourceDbModel with _$SourceDbModel {
  const factory SourceDbModel({
    required int id,
    required int id_source,
    @Default('') String ru_name,
    @Default('') String en_name,
    @Default('') String ru_abbrev,
    @Default('') String en_abbrev,
  }) = _SourceDbModel;

  /// Generate CategoryM class from Map<String, Object?>
  factory SourceDbModel.fromJson(Map<String, Object?> json) =>
      _$SourceDbModelFromJson(json);
}
