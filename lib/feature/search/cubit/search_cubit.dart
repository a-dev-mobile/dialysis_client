// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloc/bloc.dart';

import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';
import 'package:flutter/cupertino.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit()
      : super(const SearchState(isLoadPage: true, isLoadNextPage: false));
}

@immutable
class SearchState {
// enum
  final EatingEnum? eatingEnum;
  final bool isLoadPage;
  final bool isLoadNextPage;
  const SearchState({
    this.eatingEnum,
    required this.isLoadPage,
    required this.isLoadNextPage,
  });

  SearchState copyWith({
    EatingEnum? eatingEnum,
    bool? isLoadPage,
    bool? isLoadNextPage,
  }) {
    return SearchState(
      eatingEnum: eatingEnum ?? this.eatingEnum,
      isLoadPage: isLoadPage ?? this.isLoadPage,
      isLoadNextPage: isLoadNextPage ?? this.isLoadNextPage,
    );
  }

  @override
  bool operator ==(covariant SearchState other) {
    if (identical(this, other)) return true;

    return other.eatingEnum == eatingEnum &&
        other.isLoadPage == isLoadPage &&
        other.isLoadNextPage == isLoadNextPage;
  }

  @override
  int get hashCode =>
      eatingEnum.hashCode ^ isLoadPage.hashCode ^ isLoadNextPage.hashCode;
}
