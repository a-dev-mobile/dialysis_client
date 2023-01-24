// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
  
  enum EnumDailyDiuresis { no, low, normal, unknown, none }

  */

//  ******************************
// GENERATED CODE BELOW - DO NOT MODIFY
//  ******************************

enum EnumDailyDiuresis with Comparable<EnumDailyDiuresis> {
  no('no'),
  low('low'),
  normal('normal'),
  unknown('unknown'),
  none('none');

  const EnumDailyDiuresis(this.value);

  final String value;

  static EnumDailyDiuresis fromValue(
    String? value, {
    EnumDailyDiuresis? fallback,
  }) {
    switch (value) {
      case 'no':
        return no;
      case 'low':
        return low;
      case 'normal':
        return normal;
      case 'unknown':
        return unknown;
      case 'none':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() no,
    required T Function() low,
    required T Function() normal,
    required T Function() unknown,
    required T Function() none,
  }) {
    switch (this) {
      case EnumDailyDiuresis.no:
        return no();
      case EnumDailyDiuresis.low:
        return low();
      case EnumDailyDiuresis.normal:
        return normal();
      case EnumDailyDiuresis.unknown:
        return unknown();
      case EnumDailyDiuresis.none:
        return none();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? no,
    T Function()? low,
    T Function()? normal,
    T Function()? unknown,
    T Function()? none,
  }) =>
      map<T>(
        no: no ?? orElse,
        low: low ?? orElse,
        normal: normal ?? orElse,
        unknown: unknown ?? orElse,
        none: none ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? no,
    T Function()? low,
    T Function()? normal,
    T Function()? unknown,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        no: no,
        low: low,
        normal: normal,
        unknown: unknown,
        none: none,
      );

  @override
  int compareTo(EnumDailyDiuresis other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
