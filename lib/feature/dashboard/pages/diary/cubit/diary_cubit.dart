

import 'package:bloc/bloc.dart';
import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class DiaryCubit extends Cubit<DiaryState> {
  DiaryCubit({required AppStorage storage})
      : _storage = storage,
        super(
          const DiaryState(
            listDayProducts: [],
            isLoadPage: true,
            currentFormatDay: '',
            currentDateStr: '',
          ),
        );
  final AppStorage _storage;
  DateFormat _formatDate = DateFormat();
  Future<void> load() async {
    emit(state.copyWith(isLoadPage: true));
    final locale = await _storage.getLocale();
    _formatDate = DateFormat('E, d LLL', locale);

    final currentDay = DateTime.now();
    final currentFormatDay = _formatDate.format(currentDay);

    final listDayProducts = await _storage.getListDayProducts();

    emit(
      state.copyWith(
        isLoadPage: false,
        listDayProducts: listDayProducts,
        currentFormatDay: currentFormatDay,
        currentDateStr: currentDay.toIso8601String(),
      ),
    );
  }

  void increment() {
    final day =
        DateTime.parse(state.currentDateStr).add(const Duration(days: 1));

    _emitDate(day);
  }

  void decrement() {
    final day =
        DateTime.parse(state.currentDateStr).subtract(const Duration(days: 1));

    _emitDate(day);
  }

  void _emitDate(DateTime currentday) {
    return emit(
      state.copyWith(
        currentDateStr: currentday.toIso8601String(),
        currentFormatDay: _formatDate.format(currentday),
      ),
    );
  }
}

@immutable
class DiaryState extends Equatable {
  final List<DayProductsModel> listDayProducts;
  final String currentFormatDay;
  final String currentDateStr;
  final bool isLoadPage;

  const DiaryState({
    required this.listDayProducts,
    required this.currentFormatDay,
    required this.currentDateStr,
    required this.isLoadPage,
  });

  DiaryState copyWith({
    List<DayProductsModel>? listDayProducts,
    String? currentFormatDay,
    String? currentDateStr,
    bool? isLoadPage,
  }) {
    return DiaryState(
      listDayProducts: listDayProducts ?? this.listDayProducts,
      currentFormatDay: currentFormatDay ?? this.currentFormatDay,
      currentDateStr: currentDateStr ?? this.currentDateStr,
      isLoadPage: isLoadPage ?? this.isLoadPage,
    );
  }


  @override
  bool get stringify => true;

  @override
  List<Object> get props => [listDayProducts, currentFormatDay, currentDateStr, isLoadPage];
}
