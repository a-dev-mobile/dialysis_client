  // ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  enum DailyDiuresisEnum { no, low, normal, notKnow, none }

  */
  
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

enum DailyDiuresisEnum with Comparable<DailyDiuresisEnum> { 
  no('no'),
  low('low'),
  normal('normal'),
  notKnow('notKnow'),
  none('none');

  const DailyDiuresisEnum(this.value);

  final String value;

  static DailyDiuresisEnum fromValue(
    String? value, {
    DailyDiuresisEnum? fallback,
  }) {
    switch (value) {
      case 'no':
        return no;
      case 'low':
        return low;
      case 'normal':
        return normal;
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
    required T Function() no,
    required T Function() low,
    required T Function() normal,
    required T Function() notKnow,
    required T Function() none,

  }) {
    switch (this) {
      case DailyDiuresisEnum.no:
        return no();     
      case DailyDiuresisEnum.low:
        return low();     
      case DailyDiuresisEnum.normal:
        return normal();     
      case DailyDiuresisEnum.notKnow:
        return notKnow();     
      case DailyDiuresisEnum.none:
        return none();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? no,
    T Function()? low,
    T Function()? normal,
    T Function()? notKnow,
    T Function()? none,

  }) =>
      map<T>(
      no: no ?? orElse,     
      low: low ?? orElse,     
      normal: normal ?? orElse,     
      notKnow: notKnow ?? orElse,     
      none: none ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? no,
    T Function()? low,
    T Function()? normal,
    T Function()? notKnow,
    T Function()? none,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        no: no,  
        low: low,  
        normal: normal,  
        notKnow: notKnow,  
        none: none,  
        
      );

  @override
  int compareTo(DailyDiuresisEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
