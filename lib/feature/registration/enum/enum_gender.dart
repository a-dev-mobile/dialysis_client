  // ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  enum EnumGender {
  female,
  male,
  none
}

  */
  
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

enum EnumGender with Comparable<EnumGender> { 
  female('female'),
  male('male'),
  none('none');

  const EnumGender(this.value);

  final String value;

  static EnumGender fromValue(
    String? value, {
    EnumGender? fallback,
  }) {
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
    required T Function() female,
    required T Function() male,
    required T Function() none,

  }) {
    switch (this) {
      case EnumGender.female:
        return female();     
      case EnumGender.male:
        return male();     
      case EnumGender.none:
        return none();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? female,
    T Function()? male,
    T Function()? none,

  }) =>
      map<T>(
      female: female ?? orElse,     
      male: male ?? orElse,     
      none: none ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? female,
    T Function()? male,
    T Function()? none,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        female: female,  
        male: male,  
        none: none,  
        
      );

  @override
  int compareTo(EnumGender other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
