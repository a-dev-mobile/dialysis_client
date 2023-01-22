// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dialysis/feature/search/search.dart';
import 'package:dialysis/navigation/app_router.dart';

import 'package:flutter/widgets.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required AppRouter router})
      : _go = router,
        super(const CategoryState());

  final AppRouter _go;

  Future<void> load() async {
    emit(state.copyWith(isLoad: true));
    // final categories = await AppStorage.getSelectedCategories();
    // emit(state.copyWith(isLoad: false, categories: categories));
  }

  void closePage() {
    _go.router.pop();
  }

  void goBack(BuildContext context) {
    Navigator.pop(context, state.idActive);
  }

  void selected({required CategoryModel category, bool? value}) {
    final categories = state.categories;
    final newActiveindex = categories.indexOf(category);
    final oldActiveIndex = categories.indexWhere((i) => i.isActive);

    final oldActiveCategory = categories[oldActiveIndex];
    final newActiveCategory = categories[newActiveindex];
    categories[oldActiveIndex] = oldActiveCategory.copyWith(isActive: false);

    categories[newActiveindex] =
        categories[newActiveindex].copyWith(isActive: value);

    emit(
      state.copyWith(
        categories: categories,
        idActive: newActiveCategory.id,
      ),
    );
  }
}

@immutable
class CategoryState {
  /* 
  init: const [] 
   type: List<data> 
   */
  final List<CategoryModel> categories;
  /* init: -1 */
  final int idActive;
  /*  init: false */
  final bool isLoad;
// end

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const CategoryState({
    this.categories = const [],
    this.idActive = -1,
    this.isLoad = false,
  });
  /*
   factory CategoryState.init() => CategoryState(
      ); 
  */

  CategoryState copyWith({
    List<CategoryModel>? categories,
    int? idActive,
    bool? isLoad,
  }) {
    return CategoryState(
      categories: categories ?? this.categories,
      idActive: idActive ?? this.idActive,
      isLoad: isLoad ?? this.isLoad,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': categories.map((e) => e.toJson()).toList(),
      'idActive': idActive,
      'isLoad': isLoad,
    };
  }

  factory CategoryState.fromMap(Map<String, dynamic> map) {
    return CategoryState(
      categories: (map['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromMap(e as Map<String, dynamic>))
          .toList(),
      idActive: map['idActive'] as int? ?? -1,
      isLoad: map['isLoad'] as bool? ?? false,
    );
  }
  @override
  String toString() {
    return 'CategoryState(categories: $categories, idActive: $idActive, isLoad: $isLoad, )';
  }

  String toJson() => json.encode(toMap());

  factory CategoryState.fromJson(String source) =>
      CategoryState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryState &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.idActive, idActive) ||
                other.idActive == idActive) &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(categories),
        idActive,
        isLoad,
      ]);
}
