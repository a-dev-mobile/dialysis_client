  /*
  
enum Activity { normal, light, none }

  */
/// {@template activity}
/// Activity enumeration
/// {@endtemplate}

enum ActivityEnum with Comparable<ActivityEnum> { 
  normal('normal'),
  light('light'),
  none('none');

  const ActivityEnum(this.value);

  final String value;

  static ActivityEnum fromValue(String? value, {ActivityEnum? fallback}) {
    switch (value) {
      case 'normal':
        return normal;
      case 'light':
        return light;
      case 'none':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() normal,
    required T Function() light,
    required T Function() none,

  }) {
    switch (this) {
      case ActivityEnum.normal:
        return normal();     
      case ActivityEnum.light:
        return light();     
      case ActivityEnum.none:
        return none();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? normal,
    T Function()? light,
    T Function()? none,

  }) =>
      map<T>(
      normal: normal ?? orElse,     
      light: light ?? orElse,     
      none: none ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? normal,
    T Function()? light,
    T Function()? none,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        normal: normal,  
        light: light,  
        none: none,  
        
      );

  @override
  int compareTo(ActivityEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }

  