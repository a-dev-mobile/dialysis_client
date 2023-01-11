// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';
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
class DiaryState {
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listDayProducts': listDayProducts.map((x) => x.toMap()).toList(),
      'currentFormatDay': currentFormatDay,
      'currentDateStr': currentDateStr,
      'isLoadPage': isLoadPage,
    };
  }

  factory DiaryState.fromMap(Map<String, dynamic> map) {
    return DiaryState(
      listDayProducts: List<DayProductsModel>.of(
        (map['listDayProducts'] as List<int>).map<DayProductsModel>(
          (x) => DayProductsModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      currentFormatDay: (map['currentFormatDay'] ?? '') as String,
      currentDateStr: (map['currentDateStr'] ?? '') as String,
      isLoadPage: (map['isLoadPage'] ?? false) as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory DiaryState.fromJson(String source) =>
      DiaryState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DiaryState(listDayProducts: $listDayProducts, currentFormatDay: $currentFormatDay, currentDateStr: $currentDateStr, isLoadPage: $isLoadPage)';
  }

  @override
  bool operator ==(covariant DiaryState other) {
    if (identical(this, other)) return true;

    return listEquals(other.listDayProducts, listDayProducts) &&
        other.currentFormatDay == currentFormatDay &&
        other.currentDateStr == currentDateStr &&
        other.isLoadPage == isLoadPage;
  }

  @override
  int get hashCode {
    return listDayProducts.hashCode ^
        currentFormatDay.hashCode ^
        currentDateStr.hashCode ^
        isLoadPage.hashCode;
  }
}
