// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WelcomeState {
  List<bool> get boolsLocale => throw _privateConstructorUsedError;
  List<bool> get boolsTheme => throw _privateConstructorUsedError;
  LocaleEnum get localeActive => throw _privateConstructorUsedError;
  ThemeMode get themeActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomeStateCopyWith<WelcomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateCopyWith(
          WelcomeState value, $Res Function(WelcomeState) then) =
      _$WelcomeStateCopyWithImpl<$Res, WelcomeState>;
  @useResult
  $Res call(
      {List<bool> boolsLocale,
      List<bool> boolsTheme,
      LocaleEnum localeActive,
      ThemeMode themeActive});
}

/// @nodoc
class _$WelcomeStateCopyWithImpl<$Res, $Val extends WelcomeState>
    implements $WelcomeStateCopyWith<$Res> {
  _$WelcomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boolsLocale = null,
    Object? boolsTheme = null,
    Object? localeActive = null,
    Object? themeActive = null,
  }) {
    return _then(_value.copyWith(
      boolsLocale: null == boolsLocale
          ? _value.boolsLocale
          : boolsLocale // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      boolsTheme: null == boolsTheme
          ? _value.boolsTheme
          : boolsTheme // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      localeActive: null == localeActive
          ? _value.localeActive
          : localeActive // ignore: cast_nullable_to_non_nullable
              as LocaleEnum,
      themeActive: null == themeActive
          ? _value.themeActive
          : themeActive // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WelcomeStateCopyWith<$Res>
    implements $WelcomeStateCopyWith<$Res> {
  factory _$$_WelcomeStateCopyWith(
          _$_WelcomeState value, $Res Function(_$_WelcomeState) then) =
      __$$_WelcomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<bool> boolsLocale,
      List<bool> boolsTheme,
      LocaleEnum localeActive,
      ThemeMode themeActive});
}

/// @nodoc
class __$$_WelcomeStateCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$_WelcomeState>
    implements _$$_WelcomeStateCopyWith<$Res> {
  __$$_WelcomeStateCopyWithImpl(
      _$_WelcomeState _value, $Res Function(_$_WelcomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boolsLocale = null,
    Object? boolsTheme = null,
    Object? localeActive = null,
    Object? themeActive = null,
  }) {
    return _then(_$_WelcomeState(
      boolsLocale: null == boolsLocale
          ? _value._boolsLocale
          : boolsLocale // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      boolsTheme: null == boolsTheme
          ? _value._boolsTheme
          : boolsTheme // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      localeActive: null == localeActive
          ? _value.localeActive
          : localeActive // ignore: cast_nullable_to_non_nullable
              as LocaleEnum,
      themeActive: null == themeActive
          ? _value.themeActive
          : themeActive // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_WelcomeState with DiagnosticableTreeMixin implements _WelcomeState {
  const _$_WelcomeState(
      {final List<bool> boolsLocale = const [],
      final List<bool> boolsTheme = const [],
      required this.localeActive,
      required this.themeActive})
      : _boolsLocale = boolsLocale,
        _boolsTheme = boolsTheme;

  final List<bool> _boolsLocale;
  @override
  @JsonKey()
  List<bool> get boolsLocale {
    if (_boolsLocale is EqualUnmodifiableListView) return _boolsLocale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boolsLocale);
  }

  final List<bool> _boolsTheme;
  @override
  @JsonKey()
  List<bool> get boolsTheme {
    if (_boolsTheme is EqualUnmodifiableListView) return _boolsTheme;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boolsTheme);
  }

  @override
  final LocaleEnum localeActive;
  @override
  final ThemeMode themeActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WelcomeState(boolsLocale: $boolsLocale, boolsTheme: $boolsTheme, localeActive: $localeActive, themeActive: $themeActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WelcomeState'))
      ..add(DiagnosticsProperty('boolsLocale', boolsLocale))
      ..add(DiagnosticsProperty('boolsTheme', boolsTheme))
      ..add(DiagnosticsProperty('localeActive', localeActive))
      ..add(DiagnosticsProperty('themeActive', themeActive));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WelcomeState &&
            const DeepCollectionEquality()
                .equals(other._boolsLocale, _boolsLocale) &&
            const DeepCollectionEquality()
                .equals(other._boolsTheme, _boolsTheme) &&
            (identical(other.localeActive, localeActive) ||
                other.localeActive == localeActive) &&
            (identical(other.themeActive, themeActive) ||
                other.themeActive == themeActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_boolsLocale),
      const DeepCollectionEquality().hash(_boolsTheme),
      localeActive,
      themeActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WelcomeStateCopyWith<_$_WelcomeState> get copyWith =>
      __$$_WelcomeStateCopyWithImpl<_$_WelcomeState>(this, _$identity);
}

abstract class _WelcomeState implements WelcomeState {
  const factory _WelcomeState(
      {final List<bool> boolsLocale,
      final List<bool> boolsTheme,
      required final LocaleEnum localeActive,
      required final ThemeMode themeActive}) = _$_WelcomeState;

  @override
  List<bool> get boolsLocale;
  @override
  List<bool> get boolsTheme;
  @override
  LocaleEnum get localeActive;
  @override
  ThemeMode get themeActive;
  @override
  @JsonKey(ignore: true)
  _$$_WelcomeStateCopyWith<_$_WelcomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
