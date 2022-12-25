/// {@template tables}
/// Tables enumeration
/// {@endtemplate}

enum Tables with Comparable<Tables> { 
  category('category'),
  food('food'),
  nutrient('nutrient'),
  nutrient_type('nutrient_type'),
  product('product'),
  source('source'),
  at('at'),
  oo('oo'),
  ut('ut'),
  ust('ust'),
  ro('ro'),
  ou('ou');

  const Tables(this.value);

  final String value;

  static Tables fromValue(String? value, {Tables? fallback}) {
    switch (value) {
      case 'category':
        return category;
      case 'food':
        return food;
      case 'nutrient':
        return nutrient;
      case 'nutrient_type':
        return nutrient_type;
      case 'product':
        return product;
      case 'source':
        return source;
      case 'at':
        return at;
      case 'oo':
        return oo;
      case 'ut':
        return ut;
      case 'ust':
        return ust;
      case 'ro':
        return ro;
      case 'ou':
        return ou;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() category,
    required T Function() food,
    required T Function() nutrient,
    required T Function() nutrient_type,
    required T Function() product,
    required T Function() source,
    required T Function() at,
    required T Function() oo,
    required T Function() ut,
    required T Function() ust,
    required T Function() ro,
    required T Function() ou,

  }) {
    switch (this) {
      case Tables.category:
        return category();     
      case Tables.food:
        return food();     
      case Tables.nutrient:
        return nutrient();     
      case Tables.nutrient_type:
        return nutrient_type();     
      case Tables.product:
        return product();     
      case Tables.source:
        return source();     
      case Tables.at:
        return at();     
      case Tables.oo:
        return oo();     
      case Tables.ut:
        return ut();     
      case Tables.ust:
        return ust();     
      case Tables.ro:
        return ro();     
      case Tables.ou:
        return ou();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? category,
    T Function()? food,
    T Function()? nutrient,
    T Function()? nutrient_type,
    T Function()? product,
    T Function()? source,
    T Function()? at,
    T Function()? oo,
    T Function()? ut,
    T Function()? ust,
    T Function()? ro,
    T Function()? ou,

  }) =>
      map<T>(
      category: category ?? orElse,     
      food: food ?? orElse,     
      nutrient: nutrient ?? orElse,     
      nutrient_type: nutrient_type ?? orElse,     
      product: product ?? orElse,     
      source: source ?? orElse,     
      at: at ?? orElse,     
      oo: oo ?? orElse,     
      ut: ut ?? orElse,     
      ust: ust ?? orElse,     
      ro: ro ?? orElse,     
      ou: ou ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? category,
    T Function()? food,
    T Function()? nutrient,
    T Function()? nutrient_type,
    T Function()? product,
    T Function()? source,
    T Function()? at,
    T Function()? oo,
    T Function()? ut,
    T Function()? ust,
    T Function()? ro,
    T Function()? ou,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        category: category,  
        food: food,  
        nutrient: nutrient,  
        nutrient_type: nutrient_type,  
        product: product,  
        source: source,  
        at: at,  
        oo: oo,  
        ut: ut,  
        ust: ust,  
        ro: ro,  
        ou: ou,  
        
      );

  @override
  int compareTo(Tables other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
  /*
  enum Tables {
  category,
  food,
  nutrient,
  nutrient_type,
  product,
  source,
  at,
oo,
ut,
ust,
ro,
ou,
}

  */
  