import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_cubit.freezed.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(const CalendarState());
}

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    @Default(false) bool isLoad,
     DateTime? selectedDate,
  }) = _CalendarState;
}
