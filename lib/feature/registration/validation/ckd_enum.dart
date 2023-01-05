// ignore_for_file: constant_identifier_names, non_constant_identifier_names
/*
  
  enum CkdEnum {
  one,
  two,
  three_a,
  three_b,
  four,
  five,
  not_know,
  none
}


  */
/// {@template ckdenum}
/// CkdEnum enumeration
/// {@endtemplate}

enum CkdEnum with Comparable<CkdEnum> {
  one('one'),
  two('two'),
  three_a('three_a'),
  three_b('three_b'),
  four('four'),
  five('five'),
  not_know('not_know'),
  none('none');

  const CkdEnum(this.value);

  final String value;

  static CkdEnum fromValue(String? value, {CkdEnum? fallback}) {
    switch (value) {
      case 'one':
        return one;
      case 'two':
        return two;
      case 'three_a':
        return three_a;
      case 'three_b':
        return three_b;
      case 'four':
        return four;
      case 'five':
        return five;
      case 'not_know':
        return not_know;
      case 'none':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() one,
    required T Function() two,
    required T Function() three_a,
    required T Function() three_b,
    required T Function() four,
    required T Function() five,
    required T Function() not_know,
    required T Function() none,
  }) {
    switch (this) {
      case CkdEnum.one:
        return one();
      case CkdEnum.two:
        return two();
      case CkdEnum.three_a:
        return three_a();
      case CkdEnum.three_b:
        return three_b();
      case CkdEnum.four:
        return four();
      case CkdEnum.five:
        return five();
      case CkdEnum.not_know:
        return not_know();
      case CkdEnum.none:
        return none();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? one,
    T Function()? two,
    T Function()? three_a,
    T Function()? three_b,
    T Function()? four,
    T Function()? five,
    T Function()? not_know,
    T Function()? none,
  }) =>
      map<T>(
        one: one ?? orElse,
        two: two ?? orElse,
        three_a: three_a ?? orElse,
        three_b: three_b ?? orElse,
        four: four ?? orElse,
        five: five ?? orElse,
        not_know: not_know ?? orElse,
        none: none ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? one,
    T Function()? two,
    T Function()? three_a,
    T Function()? three_b,
    T Function()? four,
    T Function()? five,
    T Function()? not_know,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        one: one,
        two: two,
        three_a: three_a,
        three_b: three_b,
        four: four,
        five: five,
        not_know: not_know,
        none: none,
      );

  @override
  int compareTo(CkdEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
