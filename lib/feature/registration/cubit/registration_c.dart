// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

import 'package:bloc/bloc.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:dialysis/app/common_cubits/common_cubits.dart';
import 'package:dialysis/feature/common/enum.dart';
import 'package:dialysis/navigation/navigation.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit({
    required ThemeCubit cubitTheme,
    required LocaleCubit cubitLocale,
    required AppRouter router,
  })  : _cubitTheme = cubitTheme,
        _go = router,
        _cubitLocale = cubitLocale,
        super(
          RegistrationState(
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

    if (theme == ThemeMode.light) {
      boolsTheme = [true, false];
    } else {
      boolsTheme = [false, true];
    }

    if (locale == LocaleEnum.ru) {
      boolsLocale = [true, false];
    } else {
      boolsLocale = [false, true];
    }

    emit(state.copyWith(boolsLocale: boolsLocale, boolsTheme: boolsTheme));
  }

  void changeLocale(int index) {
    final localeActive = index == 0 ? LocaleEnum.ru : LocaleEnum.en;

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
}

@immutable
class RegistrationState {
  final List<bool> boolsLocale;
  final List<bool> boolsTheme;
  final LocaleEnum localeActive;
  final ThemeMode themeActive;
  const RegistrationState({
    this.boolsLocale = const [],
    this.boolsTheme = const [],
    required this.localeActive,
    required this.themeActive,
  });

  RegistrationState copyWith({
    List<bool>? boolsLocale,
    List<bool>? boolsTheme,
    LocaleEnum? localeActive,
    ThemeMode? themeActive,
  }) {
    return RegistrationState(
      boolsLocale: boolsLocale ?? this.boolsLocale,
      boolsTheme: boolsTheme ?? this.boolsTheme,
      localeActive: localeActive ?? this.localeActive,
      themeActive: themeActive ?? this.themeActive,
    );
  }

  @override
  String toString() {
    return 'RegistrationState(boolsLocale: $boolsLocale, boolsTheme: $boolsTheme, localeActive: $localeActive, themeActive: $themeActive)';
  }

  @override
  bool operator ==(covariant RegistrationState other) {
    if (identical(this, other)) return true;

    return listEquals(other.boolsLocale, boolsLocale) &&
        listEquals(other.boolsTheme, boolsTheme) &&
        other.localeActive == localeActive &&
        other.themeActive == themeActive;
  }

  @override
  int get hashCode {
    return boolsLocale.hashCode ^
        boolsTheme.hashCode ^
        localeActive.hashCode ^
        themeActive.hashCode;
  }
}
