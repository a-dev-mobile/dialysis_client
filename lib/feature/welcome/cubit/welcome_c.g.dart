// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_c.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WelcomeState _$$_WelcomeStateFromJson(Map<String, dynamic> json) =>
    _$_WelcomeState(
      boolsLocale:
          (json['boolsLocale'] as List<dynamic>).map((e) => e as bool).toList(),
      boolsTheme:
          (json['boolsTheme'] as List<dynamic>).map((e) => e as bool).toList(),
      localeActive: $enumDecode(_$LocaleEnumEnumMap, json['localeActive']),
      themeActive: $enumDecode(_$ThemeModeEnumMap, json['themeActive']),
    );

Map<String, dynamic> _$$_WelcomeStateToJson(_$_WelcomeState instance) =>
    <String, dynamic>{
      'boolsLocale': instance.boolsLocale,
      'boolsTheme': instance.boolsTheme,
      'localeActive': _$LocaleEnumEnumMap[instance.localeActive]!,
      'themeActive': _$ThemeModeEnumMap[instance.themeActive]!,
    };

const _$LocaleEnumEnumMap = {
  LocaleEnum.ru: 'ru',
  LocaleEnum.en: 'en',
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
