// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_unused_constructor_parameters

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dialysis/app/common_cubits/common_cubits.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:flutter/material.dart';


class SettingCubit extends Cubit<SettingState> {
  SettingCubit({
    required AppRouter router,
    required LocaleCubit cubitLocale,
    required ThemeCubit cubitTheme,
  })  : _cubitLocale = cubitLocale,
        _cubitTheme = cubitTheme,
        super(SettingState(locale: cubitLocale.state, theme: cubitTheme.state));

  final LocaleCubit _cubitLocale;
  final ThemeCubit _cubitTheme;

  void changeLocale(LocaleEnum locale) {
    emit(state.copyWith(locale: locale));

    _cubitLocale.setLocale(locale);
  }

  void changeTheme({required ThemeMode theme}) {
    emit(state.copyWith(theme: theme));

    _cubitTheme.toggleTheme(theme: theme);
  }
}

/// SettingState data class
@immutable
class SettingState {  
  /*  type: enum  */
  final LocaleEnum locale;
  /*  type: enum */
  final ThemeMode theme;
// end
   
  // GENERATED CODE BELOW - DO NOT MODIFY
  
  const SettingState({
    required this.locale,
    required this.theme,
  });
  /*
   factory SettingState.init() => SettingState(
      ); 
  */
  
SettingState copyWith({
    LocaleEnum? locale,
    ThemeMode? theme,
  }) {
    return SettingState(
      locale: locale ?? this.locale, 
      theme: theme ?? this.theme, 
    );
  }
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locale': locale.index, 
      'theme': theme.index, 
    };
  }
  
  factory SettingState.fromMap(Map<String, dynamic> map) {
    return SettingState(
      locale: LocaleEnum.values[map['locale'] as int], 
      theme: ThemeMode.values[map['theme'] as int], 
    );
  }
  @override
  String toString() {
    return 'SettingState(locale: $locale, theme: $theme, )';
  }

  String toJson() => json.encode(toMap());
  
  factory SettingState.fromJson(String source) => SettingState.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingState &&
            (identical(other.locale, locale) || other.locale == locale) && 
            (identical(other.theme, theme) || other.theme == theme) );

  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        locale,
        theme,
]);
  }
