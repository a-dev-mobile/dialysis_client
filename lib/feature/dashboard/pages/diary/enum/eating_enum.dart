/*
  enum EatingEnum {
  firstBreakfast,
  secondBreakfast,
  lunch,
  afternoonSnack,
  dinner,
  bedtimeSnack,
}

  */
/// {@template eatingenum}
/// EatingEnum enumeration
/// {@endtemplate}

enum EatingEnum with Comparable<EatingEnum> {
  firstBreakfast('firstBreakfast'),
  secondBreakfast('secondBreakfast'),
  lunch('lunch'),
  afternoonSnack('afternoonSnack'),
  dinner('dinner'),
  bedtimeSnack('bedtimeSnack');

  const EatingEnum(this.value);

  final String value;

  static EatingEnum fromValue(String? value, {EatingEnum? fallback}) {
    switch (value) {
      case 'firstBreakfast':
        return firstBreakfast;
      case 'secondBreakfast':
        return secondBreakfast;
      case 'lunch':
        return lunch;
      case 'afternoonSnack':
        return afternoonSnack;
      case 'dinner':
        return dinner;
      case 'bedtimeSnack':
        return bedtimeSnack;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() firstBreakfast,
    required T Function() secondBreakfast,
    required T Function() lunch,
    required T Function() afternoonSnack,
    required T Function() dinner,
    required T Function() bedtimeSnack,
  }) {
    switch (this) {
      case EatingEnum.firstBreakfast:
        return firstBreakfast();
      case EatingEnum.secondBreakfast:
        return secondBreakfast();
      case EatingEnum.lunch:
        return lunch();
      case EatingEnum.afternoonSnack:
        return afternoonSnack();
      case EatingEnum.dinner:
        return dinner();
      case EatingEnum.bedtimeSnack:
        return bedtimeSnack();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? firstBreakfast,
    T Function()? secondBreakfast,
    T Function()? lunch,
    T Function()? afternoonSnack,
    T Function()? dinner,
    T Function()? bedtimeSnack,
  }) =>
      map<T>(
        firstBreakfast: firstBreakfast ?? orElse,
        secondBreakfast: secondBreakfast ?? orElse,
        lunch: lunch ?? orElse,
        afternoonSnack: afternoonSnack ?? orElse,
        dinner: dinner ?? orElse,
        bedtimeSnack: bedtimeSnack ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? firstBreakfast,
    T Function()? secondBreakfast,
    T Function()? lunch,
    T Function()? afternoonSnack,
    T Function()? dinner,
    T Function()? bedtimeSnack,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        firstBreakfast: firstBreakfast,
        secondBreakfast: secondBreakfast,
        lunch: lunch,
        afternoonSnack: afternoonSnack,
        dinner: dinner,
        bedtimeSnack: bedtimeSnack,
      );

  @override
  int compareTo(EatingEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
