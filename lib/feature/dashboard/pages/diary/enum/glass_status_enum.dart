// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
  
  enum GlassStatusEnum {
  
  isSimple,
  isGood,
  isBad,
}

  */

// GENERATED CODE - DO NOT MODIFY BY HAND

enum GlassStatusEnum with Comparable<GlassStatusEnum> {
  isSimple('isSimple'),
  isGood('isGood'),
  isBad('isBad');

  const GlassStatusEnum(this.value);

  final String value;

  static GlassStatusEnum fromValue(
    String? value, {
    GlassStatusEnum? fallback,
  }) {
    switch (value) {
      case 'isSimple':
        return isSimple;
      case 'isGood':
        return isGood;
      case 'isBad':
        return isBad;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() isSimple,
    required T Function() isGood,
    required T Function() isBad,
  }) {
    switch (this) {
      case GlassStatusEnum.isSimple:
        return isSimple();
      case GlassStatusEnum.isGood:
        return isGood();
      case GlassStatusEnum.isBad:
        return isBad();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? isSimple,
    T Function()? isGood,
    T Function()? isBad,
  }) =>
      map<T>(
        isSimple: isSimple ?? orElse,
        isGood: isGood ?? orElse,
        isBad: isBad ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? isSimple,
    T Function()? isGood,
    T Function()? isBad,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        isSimple: isSimple,
        isGood: isGood,
        isBad: isBad,
      );

  @override
  int compareTo(GlassStatusEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
