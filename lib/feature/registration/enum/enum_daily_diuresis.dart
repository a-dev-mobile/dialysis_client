  // ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  enum EnumDailyDiuresis { normal, no, unknown, none }

  */
  
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

enum EnumDailyDiuresis with Comparable<EnumDailyDiuresis> { 
  normal('normal'),
  no('no'),
  unknown('unknown'),
  none('none');

  const EnumDailyDiuresis(this.value);

  final String value;

  static EnumDailyDiuresis fromValue(
    String? value, {
    EnumDailyDiuresis? fallback,
  }) {
    switch (value) {
      case 'normal':
        return normal;
      case 'no':
        return no;
      case 'unknown':
        return unknown;
      case 'none':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() normal,
    required T Function() no,
    required T Function() unknown,
    required T Function() none,

  }) {
    switch (this) {
      case EnumDailyDiuresis.normal:
        return normal();     
      case EnumDailyDiuresis.no:
        return no();     
      case EnumDailyDiuresis.unknown:
        return unknown();     
      case EnumDailyDiuresis.none:
        return none();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? normal,
    T Function()? no,
    T Function()? unknown,
    T Function()? none,

  }) =>
      map<T>(
      normal: normal ?? orElse,     
      no: no ?? orElse,     
      unknown: unknown ?? orElse,     
      none: none ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? normal,
    T Function()? no,
    T Function()? unknown,
    T Function()? none,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        normal: normal,  
        no: no,  
        unknown: unknown,  
        none: none,  
        
      );

  @override
  int compareTo(EnumDailyDiuresis other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
