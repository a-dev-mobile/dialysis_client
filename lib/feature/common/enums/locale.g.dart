// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LocaleEnum _$ru = const LocaleEnum._('ru');
const LocaleEnum _$en = const LocaleEnum._('en');

LocaleEnum _$valueOf(String name) {
  switch (name) {
    case 'ru':
      return _$ru;
    case 'en':
      return _$en;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LocaleEnum> _$values =
    new BuiltSet<LocaleEnum>(const <LocaleEnum>[
  _$ru,
  _$en,
]);

Serializer<LocaleEnum> _$localeEnumSerializer = new _$LocaleEnumSerializer();

class _$LocaleEnumSerializer implements PrimitiveSerializer<LocaleEnum> {
  @override
  final Iterable<Type> types = const <Type>[LocaleEnum];
  @override
  final String wireName = 'LocaleEnum';

  @override
  Object serialize(Serializers serializers, LocaleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  LocaleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LocaleEnum.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
