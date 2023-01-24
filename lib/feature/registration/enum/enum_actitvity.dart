// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
  
enum ActivityEnum { normal, light, none }

  */

// GENERATED CODE - DO NOT MODIFY BY HAND

enum EnumActivity with Comparable<EnumActivity> {
  normal('normal'),
  light('light'),
  none('none');

  const EnumActivity(this.value);

  final String value;

  static EnumActivity fromValue(
    String? value, {
    EnumActivity? fallback,
  }) {
    switch (value) {
      case 'normal':
        return normal;
      case 'light':
        return light;
      case 'none':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() normal,
    required T Function() light,
    required T Function() none,
  }) {
    switch (this) {
      case EnumActivity.normal:
        return normal();
      case EnumActivity.light:
        return light();
      case EnumActivity.none:
        return none();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? normal,
    T Function()? light,
    T Function()? none,
  }) =>
      map<T>(
        normal: normal ?? orElse,
        light: light ?? orElse,
        none: none ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? normal,
    T Function()? light,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        normal: normal,
        light: light,
        none: none,
      );

  @override
  int compareTo(EnumActivity other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
