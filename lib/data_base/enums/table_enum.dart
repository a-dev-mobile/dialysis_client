  // ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  
  enum TableEnum {
  food,
  source,
  product,
  category,
  nutrient,
  nutrient_type,

}
  
  */
  
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

enum TableEnum with Comparable<TableEnum> { 
  food('food'),
  source('source'),
  product('product'),
  category('category'),
  nutrient('nutrient'),
  nutrient_type('nutrient_type');

  const TableEnum(this.value);

  final String value;

  static TableEnum fromValue(
    String? value, {
    TableEnum? fallback,
  }) {
    switch (value) {
      case 'food':
        return food;
      case 'source':
        return source;
      case 'product':
        return product;
      case 'category':
        return category;
      case 'nutrient':
        return nutrient;
      case 'nutrient_type':
        return nutrient_type;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() food,
    required T Function() source,
    required T Function() product,
    required T Function() category,
    required T Function() nutrient,
    required T Function() nutrient_type,

  }) {
    switch (this) {
      case TableEnum.food:
        return food();     
      case TableEnum.source:
        return source();     
      case TableEnum.product:
        return product();     
      case TableEnum.category:
        return category();     
      case TableEnum.nutrient:
        return nutrient();     
      case TableEnum.nutrient_type:
        return nutrient_type();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? food,
    T Function()? source,
    T Function()? product,
    T Function()? category,
    T Function()? nutrient,
    T Function()? nutrient_type,

  }) =>
      map<T>(
      food: food ?? orElse,     
      source: source ?? orElse,     
      product: product ?? orElse,     
      category: category ?? orElse,     
      nutrient: nutrient ?? orElse,     
      nutrient_type: nutrient_type ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? food,
    T Function()? source,
    T Function()? product,
    T Function()? category,
    T Function()? nutrient,
    T Function()? nutrient_type,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        food: food,  
        source: source,  
        product: product,  
        category: category,  
        nutrient: nutrient,  
        nutrient_type: nutrient_type,  
        
      );

  @override
  int compareTo(TableEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
