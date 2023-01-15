// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars


import 'package:bloc/bloc.dart';


import 'package:dialysis/app/common_cubits/common_cubits.dart';

import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'welcome_c.freezed.dart';
part 'welcome_c.g.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit({
    required ThemeCubit cubitTheme,
    required LocaleCubit cubitLocale,
    required AppRouter router,
  })  : _cubitTheme = cubitTheme,
        _go = router,
        _cubitLocale = cubitLocale,
        super(
          WelcomeState(
            boolsLocale: const [],
            boolsTheme: const [],
            localeActive: cubitLocale.state,
            themeActive: cubitTheme.state,
          ),
        );

  final ThemeCubit _cubitTheme;
  final LocaleCubit _cubitLocale;
  // ignore: unused_field
  final AppRouter _go;

  void load() {
    final locale = _cubitLocale.state;
    final theme = _cubitTheme.state;
    var boolsLocale = state.boolsLocale;
    var boolsTheme = state.boolsTheme;

    boolsTheme = theme == ThemeMode.light ? [true, false] : [false, true];

    boolsLocale = locale == LocaleEnum.ru ? [false, true] : [true, false];

    emit(state.copyWith(boolsLocale: boolsLocale, boolsTheme: boolsTheme));
  }

  void changeLocale(int index) {
    final localeActive = index == 0 ? LocaleEnum.en : LocaleEnum.ru;

    final boolsLocale = state.boolsLocale;
    final result = _forEachResult(boolsLocale, index);

    emit(state.copyWith(boolsLocale: result, localeActive: localeActive));
    _cubitLocale.setLocale(localeActive);
  }

  List<bool> _forEachResult(List<bool> bools, int index) {
    for (var i = 0; i < bools.length; i++) {
      bools[i] = i == index;
    }

    return bools;
  }

  void changeTheme(int index) {
    final themeActive = index == 0 ? ThemeMode.light : ThemeMode.dark;

    _cubitTheme.toggleTheme(
      theme: themeActive,
    );

    final boolsTheme = state.boolsTheme;
    final result = _forEachResult(boolsTheme, index);

    emit(state.copyWith(boolsTheme: result, themeActive: themeActive));
  }

  void nextPage() {
    _go.router.pushNamed(RegistrationPage.name);
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
class WelcomeState with _$WelcomeState {
  const factory WelcomeState({
    required List<bool> boolsLocale,
    required List<bool> boolsTheme,
    required LocaleEnum localeActive,
    required ThemeMode themeActive,
  }) = _WelcomeState;



  factory WelcomeState.fromJson(Map<String, Object?> json) =>
      _$WelcomeStateFromJson(json);
}
