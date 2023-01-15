import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_reg_model.freezed.dart';
part 'date_reg_model.g.dart';

/// DateRegModel data class
@freezed
class DateRegModel with _$DateRegModel {
  const factory DateRegModel({
    @Default([]) List<String> days,
    @Default([]) List<String> months,
    @Default([]) List<String> years,
  }) = _DateRegModel;

  const DateRegModel._();

  /// Generate DateRegModel class from Map<String, Object?>
  factory DateRegModel.fromJson(Map<String, Object?> json) =>
      _$DateRegModelFromJson(json);
}
