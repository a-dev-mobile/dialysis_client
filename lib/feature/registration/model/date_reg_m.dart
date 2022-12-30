// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/foundation.dart';

/// {@template date_reg}
/// DateReg class
/// {@endtemplate}
@immutable
class DateRegModel {
  final int daySelected;
  final int yearSelected;
  final String monthSelected;

  final List<String> months;
  final List<int> days;
  final List<int> years;
  const DateRegModel({
    this.daySelected = -1,
    this.yearSelected = -1,
    this.monthSelected = '',
    this.months = const [],
    this.days = const [],
    this.years = const [],
  });

  DateRegModel copyWith({
    int? daySelected,
    int? yearSelected,
    String? monthSelected,
    List<String>? months,
    List<int>? days,
    List<int>? years,
  }) {
    return DateRegModel(
      daySelected: daySelected ?? this.daySelected,
      yearSelected: yearSelected ?? this.yearSelected,
      monthSelected: monthSelected ?? this.monthSelected,
      months: months ?? this.months,
      days: days ?? this.days,
      years: years ?? this.years,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daySelected': daySelected,
      'yearSelected': yearSelected,
      'monthSelected': monthSelected,
      'months': months,
      'days': days,
      'years': years,
    };
  }

  factory DateRegModel.fromMap(Map<String, dynamic> map) {
    return DateRegModel(
      daySelected: (map['daySelected'] ?? 0) as int,
      yearSelected: (map['yearSelected'] ?? 0) as int,
      monthSelected: (map['monthSelected'] ?? '') as String,
      months: List<String>.from(
          (map['months'] ?? const <String>[]) as List<String>),
      days: List<int>.from((map['days'] ?? const <int>[]) as List<int>),
      years: List<int>.from((map['years'] ?? const <int>[]) as List<int>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DateRegModel.fromJson(String source) =>
      DateRegModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DateRegModel(daySelected: $daySelected, yearSelected: $yearSelected, monthSelected: $monthSelected, months: $months, days: $days, years: $years)';
  }

  @override
  bool operator ==(covariant DateRegModel other) {
    if (identical(this, other)) return true;

    return other.daySelected == daySelected &&
        other.yearSelected == yearSelected &&
        other.monthSelected == monthSelected &&
        listEquals(other.months, months) &&
        listEquals(other.days, days) &&
        listEquals(other.years, years);
  }

  @override
  int get hashCode {
    return daySelected.hashCode ^
        yearSelected.hashCode ^
        monthSelected.hashCode ^
        months.hashCode ^
        days.hashCode ^
        years.hashCode;
  }
}
