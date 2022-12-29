// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_unused_constructor_parameters



import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:dialysis/app/common_cubits/common_c.dart';

import 'package:dialysis/feature/common/enums/enums.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'setting_cubit.freezed.dart';
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
@freezed
class SettingState with _$SettingState {
  const factory SettingState(
      {required LocaleEnum locale, required ThemeMode theme}) = _SettingState;

  const SettingState._();
}
