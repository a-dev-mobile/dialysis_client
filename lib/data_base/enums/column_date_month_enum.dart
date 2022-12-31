  /*
  
  enum ColumnDateMonthEnum {
  id,
  ru_month,
  en_month,
}

  */
/// {@template columndatemonthenum}
/// ColumnDateMonthEnum enumeration
/// {@endtemplate}

enum ColumnDateMonthEnum with Comparable<ColumnDateMonthEnum> { 
  id('id'),
  ru_month('ru_month'),
  en_month('en_month');

  const ColumnDateMonthEnum(this.value);

  final String value;

  static ColumnDateMonthEnum fromValue(String? value, {ColumnDateMonthEnum? fallback}) {
    switch (value) {
      case 'id':
        return id;
      case 'ru_month':
        return ru_month;
      case 'en_month':
        return en_month;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() id,
    required T Function() ru_month,
    required T Function() en_month,

  }) {
    switch (this) {
      case ColumnDateMonthEnum.id:
        return id();     
      case ColumnDateMonthEnum.ru_month:
        return ru_month();     
      case ColumnDateMonthEnum.en_month:
        return en_month();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? id,
    T Function()? ru_month,
    T Function()? en_month,

  }) =>
      map<T>(
      id: id ?? orElse,     
      ru_month: ru_month ?? orElse,     
      en_month: en_month ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? id,
    T Function()? ru_month,
    T Function()? en_month,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        id: id,  
        ru_month: ru_month,  
        en_month: en_month,  
        
      );

  @override
  int compareTo(ColumnDateMonthEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }

  