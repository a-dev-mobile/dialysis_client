// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EnumTable _$category = const EnumTable._('category');
const EnumTable _$food = const EnumTable._('food');
const EnumTable _$nutrient = const EnumTable._('nutrient');
const EnumTable _$nutrient_type = const EnumTable._('nutrient_type');
const EnumTable _$product = const EnumTable._('product');
const EnumTable _$source = const EnumTable._('source');

EnumTable _$valueOf(String name) {
  switch (name) {
    case 'category':
      return _$category;
    case 'food':
      return _$food;
    case 'nutrient':
      return _$nutrient;
    case 'nutrient_type':
      return _$nutrient_type;
    case 'product':
      return _$product;
    case 'source':
      return _$source;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EnumTable> _$values = new BuiltSet<EnumTable>(const <EnumTable>[
  _$category,
  _$food,
  _$nutrient,
  _$nutrient_type,
  _$product,
  _$source,
]);

Serializer<EnumTable> _$enumTableSerializer = new _$EnumTableSerializer();

class _$EnumTableSerializer implements PrimitiveSerializer<EnumTable> {
  @override
  final Iterable<Type> types = const <Type>[EnumTable];
  @override
  final String wireName = 'EnumTable';

  @override
  Object serialize(Serializers serializers, EnumTable object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  EnumTable deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EnumTable.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
