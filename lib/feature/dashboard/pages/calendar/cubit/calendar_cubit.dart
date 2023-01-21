import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(const CalendarState());
}

@immutable
class CalendarState {   
  /* init: false  */
  final bool isLoad;
  /*  */
  final DateTime? selectedDate;
  // end
   
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************
  
  const CalendarState({
    this.isLoad = false,
    this.selectedDate,
  });
  /*
   factory CalendarState.init() => CalendarState(
      ); 
  */
  
CalendarState copyWith({
    bool? isLoad,
    DateTime? selectedDate,
  }) {
    return CalendarState(
      isLoad: isLoad ?? this.isLoad, 
      selectedDate: selectedDate ?? this.selectedDate, 
    );
  }
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoad': isLoad, 
      'selectedDate': selectedDate?.toIso8601String(), 
    };
  }
  
  factory CalendarState.fromMap(Map<String, dynamic> map) {
    return CalendarState(
      isLoad: map['isLoad'] as bool? ?? false, 
      selectedDate: map['selectedDate'] == null ? null : DateTime.parse(map['selectedDate'] as String), 
    );
  }
  @override
  String toString() {
    return 'CalendarState(isLoad: $isLoad, selectedDate: $selectedDate, )';
  }

  String toJson() => json.encode(toMap());
  
  factory CalendarState.fromJson(String source) => CalendarState.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarState &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad) && 
            (identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate) );

  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoad,
        selectedDate,
]);
  }
