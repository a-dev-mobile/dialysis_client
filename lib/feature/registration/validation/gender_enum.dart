/// {@template gender}
/// Gender enumeration
/// {@endtemplate}

enum GenderEnum with Comparable<GenderEnum> {
  female('female'),
  male('male'),
  none('none');

  const GenderEnum(this.value);

  final String value;

  static GenderEnum fromValue(String? value, {GenderEnum? fallback}) {
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
      case GenderEnum.male:
        return male();
      case GenderEnum.female:
        return female();
      case GenderEnum.none:
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
  int compareTo(GenderEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
