// ignore_for_file: constant_identifier_names

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'table.g.dart';

class EnumTable extends EnumClass {
  static Serializer<EnumTable> get serializer => _$enumTableSerializer;

  static const EnumTable category = _$category;
  static const EnumTable food = _$food;
  static const EnumTable nutrient = _$nutrient;
  static const EnumTable nutrient_type = _$nutrient_type;
  static const EnumTable product = _$product;
  static const EnumTable source = _$source;

  const EnumTable._(String name) : super(name);

  static BuiltSet<EnumTable> get values => _$values;
  static EnumTable valueOf(String name) => _$valueOf(name);
}
