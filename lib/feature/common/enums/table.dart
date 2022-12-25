/// {@template tableenum}
/// TableEnum enumeration
/// {@endtemplate}

enum TableEnum with Comparable<TableEnum> { 
  category('category'),
  food('food'),
  nutrient('nutrient'),
  nutrient_type('nutrient_type'),
  product('product'),
  source('source');

  const TableEnum(this.value);

  final String value;

  static TableEnum fromValue(String? value, {TableEnum? fallback}) {
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

  }) {
    switch (this) {
      case TableEnum.category:
        return category();     
      case TableEnum.food:
        return food();     
      case TableEnum.nutrient:
        return nutrient();     
      case TableEnum.nutrient_type:
        return nutrient_type();     
      case TableEnum.product:
        return product();     
      case TableEnum.source:
        return source();     

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

  }) =>
      map<T>(
      category: category ?? orElse,     
      food: food ?? orElse,     
      nutrient: nutrient ?? orElse,     
      nutrient_type: nutrient_type ?? orElse,     
      product: product ?? orElse,     
      source: source ?? orElse,     

      );
  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? category,
    T Function()? food,
    T Function()? nutrient,
    T Function()? nutrient_type,
    T Function()? product,
    T Function()? source,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        category: category,  
        food: food,  
        nutrient: nutrient,  
        nutrient_type: nutrient_type,  
        product: product,  
        source: source,  
        
      );

  @override
  int compareTo(TableEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
  /*
  enum TableEnum {
  category,
  food,
  nutrient,
  nutrient_type,
  product,
  source,
}

  */
  