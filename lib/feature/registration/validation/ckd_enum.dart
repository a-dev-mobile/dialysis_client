// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
  enum CkdEnum {
  one,
  two,
  threeA,
  threeB,
  four,
  five,
  notKnow,
  none,
}

  */

// GENERATED CODE - DO NOT MODIFY BY HAND

enum CkdEnum with Comparable<CkdEnum> {
  one('one'),
  two('two'),
  threeA('threeA'),
  threeB('threeB'),
  four('four'),
  five('five'),
  notKnow('notKnow'),
  none('none');

  const CkdEnum(this.value);

  final String value;

  static CkdEnum fromValue(
    String? value, {
    CkdEnum? fallback,
  }) {
    switch (value) {
      case 'one':
        return one;
      case 'two':
        return two;
      case 'threeA':
        return threeA;
      case 'threeB':
        return threeB;
      case 'four':
        return four;
      case 'five':
        return five;
      case 'notKnow':
        return notKnow;
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
    required T Function() threeA,
    required T Function() threeB,
    required T Function() four,
    required T Function() five,
    required T Function() notKnow,
    required T Function() none,
  }) {
    switch (this) {
      case CkdEnum.one:
        return one();
      case CkdEnum.two:
        return two();
      case CkdEnum.threeA:
        return threeA();
      case CkdEnum.threeB:
        return threeB();
      case CkdEnum.four:
        return four();
      case CkdEnum.five:
        return five();
      case CkdEnum.notKnow:
        return notKnow();
      case CkdEnum.none:
        return none();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? one,
    T Function()? two,
    T Function()? threeA,
    T Function()? threeB,
    T Function()? four,
    T Function()? five,
    T Function()? notKnow,
    T Function()? none,
  }) =>
      map<T>(
        one: one ?? orElse,
        two: two ?? orElse,
        threeA: threeA ?? orElse,
        threeB: threeB ?? orElse,
        four: four ?? orElse,
        five: five ?? orElse,
        notKnow: notKnow ?? orElse,
        none: none ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? one,
    T Function()? two,
    T Function()? threeA,
    T Function()? threeB,
    T Function()? four,
    T Function()? five,
    T Function()? notKnow,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        one: one,
        two: two,
        threeA: threeA,
        threeB: threeB,
        four: four,
        five: five,
        notKnow: notKnow,
        none: none,
      );

  @override
  int compareTo(CkdEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
