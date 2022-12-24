// ignore_for_file: constant_identifier_names

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'locale.g.dart';

class LocaleEnum extends EnumClass {
  static Serializer<LocaleEnum> get serializer => _$localeEnumSerializer;

  static const LocaleEnum ru = _$ru;
  static const LocaleEnum en = _$en;


  const LocaleEnum._(String name) : super(name);

  static BuiltSet<LocaleEnum> get values => _$values;
  static LocaleEnum valueOf(String name) => _$valueOf(name);
}
