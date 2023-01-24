// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
   

  enum EnumDiabetes { yes, no,none }



  */

enum EnumDiabetes with Comparable<EnumDiabetes> {
  yes('yes'),
  no('no'),
  none('none');

  const EnumDiabetes(this.value);

  final String value;

  static EnumDiabetes fromValue(
    String? value, {
    EnumDiabetes? fallback,
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
      case EnumDiabetes.yes:
        return yes();
      case EnumDiabetes.no:
        return no();
      case EnumDiabetes.none:
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
  int compareTo(EnumDiabetes other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
