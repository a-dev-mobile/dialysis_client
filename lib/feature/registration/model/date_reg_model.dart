import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

@immutable
class DateRegModel { 
  /* init: const [] */
  final List<String> days;
  /* init: const [] */
  final List<String> months;
  /* init: const [] */
  final List<String> years;
  // end
   
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************
  
  const DateRegModel({
    this.days = const [],
    this.months = const [],
    this.years = const [],
  });
  /*
   factory DateRegModel.init() => DateRegModel(
      ); 
  */
  
DateRegModel copyWith({
    List<String>? days,
    List<String>? months,
    List<String>? years,
  }) {
    return DateRegModel(
      days: days ?? this.days, 
      months: months ?? this.months, 
      years: years ?? this.years, 
    );
  }
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days, 
      'months': months, 
      'years': years, 
    };
  }
  
  factory DateRegModel.fromMap(Map<String, dynamic> map) {
    return DateRegModel(
      days: (map['days'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      months: (map['months'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      years: (map['years'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
    );
  }
  @override
  String toString() {
    return 'DateRegModel(days: $days, months: $months, years: $years, )';
  }

  String toJson() => json.encode(toMap());
  
  factory DateRegModel.fromJson(String source) => DateRegModel.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateRegModel &&
            const DeepCollectionEquality().equals(other.days, days) && 
            const DeepCollectionEquality().equals(other.months, months) && 
            const DeepCollectionEquality().equals(other.years, years) );

  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(days),
        const DeepCollectionEquality().hash(months),
        const DeepCollectionEquality().hash(years),
]);
  }
