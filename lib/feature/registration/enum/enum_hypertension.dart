// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
  enum HypertensionEnum { yes, no,none }

  */

enum EnumHypertension with Comparable<EnumHypertension> {
  yes('yes'),
  no('no'),
  none('none');

  const EnumHypertension(this.value);

  final String value;

  static EnumHypertension fromValue(
    String? value, {
    EnumHypertension? fallback,
  }) {
    switch (value) {
      case 'yes':
        return yes;
      case 'no':
        return no;
      case 'none':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() yes,
    required T Function() no,
    required T Function() none,
  }) {
    switch (this) {
      case EnumHypertension.yes:
        return yes();
      case EnumHypertension.no:
        return no();
      case EnumHypertension.none:
        return none();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? yes,
    T Function()? no,
    T Function()? none,
  }) =>
      map<T>(
        yes: yes ?? orElse,
        no: no ?? orElse,
        none: none ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? yes,
    T Function()? no,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        yes: yes,
        no: no,
        none: none,
      );

  @override
  int compareTo(EnumHypertension other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
