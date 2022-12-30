  /*
  enum DateColumnEnum {
  id,
  ru_month,
  en_month,
  year,
}

  */
/// {@template datecolumnenum}
/// DateColumnEnum enumeration
/// {@endtemplate}

enum DateColumnEnum with Comparable<DateColumnEnum> { 
  id('id'),
  ru_month('ru_month'),
  en_month('en_month'),
  year('year');

  const DateColumnEnum(this.value);

  final String value;

  static DateColumnEnum fromValue(String? value, {DateColumnEnum? fallback}) {
    switch (value) {
      case 'id':
        return id;
      case 'ru_month':
        return ru_month;
      case 'en_month':
        return en_month;
      case 'year':
        return year;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() id,
    required T Function() ru_month,
    required T Function() en_month,
    required T Function() year,

  }) {
    switch (this) {
      case DateColumnEnum.id:
        return id();     
      case DateColumnEnum.ru_month:
        return ru_month();     
      case DateColumnEnum.en_month:
        return en_month();     
      case DateColumnEnum.year:
        return year();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? id,
    T Function()? ru_month,
    T Function()? en_month,
    T Function()? year,

  }) =>
      map<T>(
      id: id ?? orElse,     
      ru_month: ru_month ?? orElse,     
      en_month: en_month ?? orElse,     
      year: year ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? id,
    T Function()? ru_month,
    T Function()? en_month,
    T Function()? year,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        id: id,  
        ru_month: ru_month,  
        en_month: en_month,  
        year: year,  
        
      );

  @override
  int compareTo(DateColumnEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }

  