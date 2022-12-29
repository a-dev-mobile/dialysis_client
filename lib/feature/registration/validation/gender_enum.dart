/// {@template gender}
/// Gender enumeration
/// {@endtemplate}

enum Gender with Comparable<Gender> {
  female('female'),
  male('male'),
  none('none');

  const Gender(this.value);

  final String value;

  static Gender fromValue(String? value, {Gender? fallback}) {
    switch (value) {
      case 'female':
        return female;
      case 'male':
        return male;
      case 'none':
        return none;
      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() male,
    required T Function() female,
    required T Function() none,
  }) {
    switch (this) {
      case Gender.male:
        return male();
      case Gender.female:
        return female();
      case Gender.none:
        return none();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? male,
    T Function()? female,
    T Function()? none,
  }) =>
      map<T>(
        male: male ?? orElse,
        female: female ?? orElse,
        none: none ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? male,
    T Function()? female,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        male: male,
        female: female,
        none: none,
      );

  @override
  int compareTo(Gender other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
