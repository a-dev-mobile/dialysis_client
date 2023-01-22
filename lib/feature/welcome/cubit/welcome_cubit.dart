// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dialysis/app/app.dart';


import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/navigation/navigation.dart';

import 'package:flutter/material.dart';

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

@immutable
class WelcomeState {
  /*  */
  final List<bool> boolsLocale;
  /*  */
  final List<bool> boolsTheme;
  /* type:enum */
  final LocaleEnum localeActive;
  /* type:enum */
  final ThemeMode themeActive;

  // end

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const WelcomeState({
    required this.boolsLocale,
    required this.boolsTheme,
    required this.localeActive,
    required this.themeActive,
  });
  /*
   factory WelcomeState.init() => WelcomeState(
        boolsLocale: const [],
        boolsTheme: const [],
      ); 
  */

  WelcomeState copyWith({
    List<bool>? boolsLocale,
    List<bool>? boolsTheme,
    LocaleEnum? localeActive,
    ThemeMode? themeActive,
  }) {
    return WelcomeState(
      boolsLocale: boolsLocale ?? this.boolsLocale,
      boolsTheme: boolsTheme ?? this.boolsTheme,
      localeActive: localeActive ?? this.localeActive,
      themeActive: themeActive ?? this.themeActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolsLocale': boolsLocale,
      'boolsTheme': boolsTheme,
      'localeActive': localeActive.index,
      'themeActive': themeActive.index,
    };
  }

  factory WelcomeState.fromMap(Map<String, dynamic> map) {
    return WelcomeState(
      boolsLocale:
          (map['boolsLocale'] as List<dynamic>).map((e) => e as bool).toList(),
      boolsTheme:
          (map['boolsTheme'] as List<dynamic>).map((e) => e as bool).toList(),
      localeActive: LocaleEnum.values[map['localeActive'] as int],
      themeActive: ThemeMode.values[map['themeActive'] as int],
    );
  }
  @override
  String toString() {
    return 'WelcomeState(boolsLocale: $boolsLocale, boolsTheme: $boolsTheme, localeActive: $localeActive, themeActive: $themeActive, )';
  }

  String toJson() => json.encode(toMap());

  factory WelcomeState.fromJson(String source) =>
      WelcomeState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WelcomeState &&
            const DeepCollectionEquality()
                .equals(other.boolsLocale, boolsLocale) &&
            const DeepCollectionEquality()
                .equals(other.boolsTheme, boolsTheme) &&
            (identical(other.localeActive, localeActive) ||
                other.localeActive == localeActive) &&
            (identical(other.themeActive, themeActive) ||
                other.themeActive == themeActive));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(boolsLocale),
        const DeepCollectionEquality().hash(boolsTheme),
        localeActive,
        themeActive,
      ]);
}
