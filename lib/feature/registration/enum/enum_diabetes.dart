// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
   

  enum DiabetesEnum { yes, no,none }



  */

enum DiabetesEnum with Comparable<DiabetesEnum> {
  yes('yes'),
  no('no'),
  none('none');

  const DiabetesEnum(this.value);

  final String value;

  static DiabetesEnum fromValue(
    String? value, {
    DiabetesEnum? fallback,
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
      case DiabetesEnum.yes:
        return yes();
      case DiabetesEnum.no:
        return no();
      case DiabetesEnum.none:
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
  int compareTo(DiabetesEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
