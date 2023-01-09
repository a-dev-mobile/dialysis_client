// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/foundation.dart';

/// {@template date_reg}
/// DateReg class
/// {@endtemplate}
@immutable
class DateRegModel {

  final  List<String> months;
  final List<String> days;
  final List<String> years;
  const DateRegModel({
    required this.months,
    required this.days,
    required this.years,
  });
  DateRegModel copyWith({
    List<String>? months,
    List<String>? days,
    List<String>? years,
  }) {
    return DateRegModel(
      months: months ?? this.months,
      days: days ?? this.days,
      years: years ?? this.years,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'months': months,
      'days': days,
      'years': years,
    };
  }

  factory DateRegModel.fromMap(Map<String, dynamic> map) {
    return DateRegModel(
      months: List<String>.from((map['months'] ?? const <String>[]) as List<String>),
      days: List<String>.from((map['days'] ?? const <String>[]) as List<String>),
      years: List<String>.from((map['years'] ?? const <String>[]) as List<String>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DateRegModel.fromJson(String source) =>
      DateRegModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DateRegModel(months: $months, days: $days, years: $years)';

  @override
  bool operator ==(covariant DateRegModel other) {
    if (identical(this, other)) return true;
  
    return 
      listEquals(other.months, months) &&
      listEquals(other.days, days) &&
      listEquals(other.years, years);
  }

  @override
  int get hashCode => months.hashCode ^ days.hashCode ^ years.hashCode;
}
