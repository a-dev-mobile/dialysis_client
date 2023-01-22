import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';

import 'package:dialysis/core/storage/app_storage.dart';

import 'package:dialysis/data_base/data_base.dart';

import 'package:dialysis/feature/search/search.dart';
import 'package:dialysis/l10n/app_localizations.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required AppDb db,
    required AppStorage storage,
    required AppRouter router,
  })  : _db = db,
        _go = router,
        _storage = storage,
        super(const SearchState()) {
    on<SearchEventStarted>(_onStarted);
    on<SearchEventFind>(_onFind, transformer: restartable());
  }

  final AppDb _db;
  // ignore: unused_field
  final AppRouter _go;
  final AppStorage _storage;
// 
  // ignore: unused_field
  String _locale = '';
  //
  Future<void> _onStarted(
    SearchEventStarted event,
    Emitter<SearchState> emit,
  ) async {
    _statusLoad(emit);
    _locale = await _storage.getLocale();

    // await _db.copyDb();

    _statusInit(emit);
  }

  void _statusInit(Emitter<SearchState> emit) =>
      emit(state.copyWith(statusSearch: SearchStatus.initial));

  void _statusLoad(Emitter<SearchState> emit) =>
      emit(state.copyWith(statusSearch: SearchStatus.loading));

  void _statusSuccess(Emitter<SearchState> emit) =>
      emit(state.copyWith(statusSearch: SearchStatus.success));

  void _statusEmpty(Emitter<SearchState> emit) =>
      emit(state.copyWith(statusSearch: SearchStatus.empty));

  void _statusError(Emitter<SearchState> emit, [String msg = '']) =>
      emit(state.copyWith(statusSearch: SearchStatus.empty, msgError: msg));

  Future<void> _onFind(
    SearchEventFind event,
    Emitter<SearchState> emit,
  ) async {
    _statusLoad(emit);
    final find = event.find;

    final isValid = _isValidAndCheck(emit: emit, value: find);

    if (!isValid) {
      return;
    }

    // выдержка перед поиском для ввода текста поиска

    await Future<void>.delayed(const Duration(milliseconds: 1000));
    // чтобы запросы пропускались если время не прошло
    // https://github.com/felangel/bloc/issues/3349#issuecomment-1128950124
    if (emit.isDone) return;



    try {
      final result = await _db.getTestName();

      if (result.isEmpty) {
        _statusEmpty(emit);

        return;
      } else {
        emit(
          state.copyWith(testName: []),
        );
        _statusSuccess(emit);
      }
    } on Exception catch (e) {
      addError(e);

      _statusError(emit, e.toString());
    }
  }

  // FutureOr<void> _onClean(SearchEventClean event, Emitter<SearchState> emit) {
  //   _checkLastSearch(emit);
  //   emit(
  //     state.copyWith(
  //       validSearchFormz: const ValidSearchFormz.pure(),
  //       statusValid: FormzStatus.pure,
  //       categories: [],
  //     ),
  //   );
  //   _statusInit(emit);
  // }

  bool _isValidAndCheck({
    required Emitter<SearchState> emit,
    required String value,
  }) {
    final validSearch = ValidSearchFormz.dirty(value: value);
    emit(
      state.copyWith(
        validSearchFormz: validSearch,
        isValidSearch: Formz.validate([validSearch]),
      ),
    );

    return state.isValidSearch;
  }
}
