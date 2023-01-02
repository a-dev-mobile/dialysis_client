// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/feature/food_info/food_info.dart';

class FoodInfoCubit extends Cubit<FoodInfoState> {
  FoodInfoCubit({required AppStorage storage})
      : _storage = storage,
        super(
          const FoodInfoState(
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
class FoodInfoState {
  final List<DayProductsModel> listDayProducts;
  final String currentFormatDay;
  final String currentDateStr;
  final bool isLoadPage;

  const FoodInfoState({
    required this.listDayProducts,
    required this.currentFormatDay,
    required this.currentDateStr,
    required this.isLoadPage,
  });

  FoodInfoState copyWith({
    List<DayProductsModel>? listDayProducts,
    String? currentFormatDay,
    String? currentDateStr,
    bool? isLoadPage,
  }) {
    return FoodInfoState(
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

  factory FoodInfoState.fromMap(Map<String, dynamic> map) {
    return FoodInfoState(
      listDayProducts: List<DayProductsModel>.from(
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

  factory FoodInfoState.fromJson(String source) =>
      FoodInfoState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FoodInfoState(listDayProducts: $listDayProducts, currentFormatDay: $currentFormatDay, currentDateStr: $currentDateStr, isLoadPage: $isLoadPage)';
  }

  @override
  bool operator ==(covariant FoodInfoState other) {
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
