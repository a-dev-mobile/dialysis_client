  // ignore_for_file: constant_identifier_names

  /*
  enum CkdEnum {
  one,
  two,
  three,
  four,
  five_before_dialysis,
  five_after_dialysis,
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
  three('three'),
  four('four'),
  five_before_dialysis('five_before_dialysis'),
  five_after_dialysis('five_after_dialysis'),
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
      case 'three':
        return three;
      case 'four':
        return four;
      case 'five_before_dialysis':
        return five_before_dialysis;
      case 'five_after_dialysis':
        return five_after_dialysis;
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
    required T Function() three,
    required T Function() four,
    required T Function() five_before_dialysis,
    required T Function() five_after_dialysis,
    required T Function() not_know,
    required T Function() none,

  }) {
    switch (this) {
      case CkdEnum.one:
        return one();     
      case CkdEnum.two:
        return two();     
      case CkdEnum.three:
        return three();     
      case CkdEnum.four:
        return four();     
      case CkdEnum.five_before_dialysis:
        return five_before_dialysis();     
      case CkdEnum.five_after_dialysis:
        return five_after_dialysis();     
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
    T Function()? three,
    T Function()? four,
    T Function()? five_before_dialysis,
    T Function()? five_after_dialysis,
    T Function()? not_know,
    T Function()? none,

  }) =>
      map<T>(
      one: one ?? orElse,     
      two: two ?? orElse,     
      three: three ?? orElse,     
      four: four ?? orElse,     
      five_before_dialysis: five_before_dialysis ?? orElse,     
      five_after_dialysis: five_after_dialysis ?? orElse,     
      not_know: not_know ?? orElse,     
      none: none ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? one,
    T Function()? two,
    T Function()? three,
    T Function()? four,
    T Function()? five_before_dialysis,
    T Function()? five_after_dialysis,
    T Function()? not_know,
    T Function()? none,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        one: one,  
        two: two,  
        three: three,  
        four: four,  
        five_before_dialysis: five_before_dialysis,  
        five_after_dialysis: five_after_dialysis,  
        not_know: not_know,  
        none: none,  
        
      );

  @override
  int compareTo(CkdEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }

  