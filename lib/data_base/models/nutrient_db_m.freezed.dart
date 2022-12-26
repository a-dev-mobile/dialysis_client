// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrient_db_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutrientDbModel _$NutrientDbModelFromJson(Map<String, dynamic> json) {
  return _NutrientDbModel.fromJson(json);
}

/// @nodoc
mixin _$NutrientDbModel {
  int get id => throw _privateConstructorUsedError;
  int get id_nutrient => throw _privateConstructorUsedError;
  String get nutrient => throw _privateConstructorUsedError;
  String get ru_name => throw _privateConstructorUsedError;
  String get en_name => throw _privateConstructorUsedError;
  String get ru_unit => throw _privateConstructorUsedError;
  String get en_unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientDbModelCopyWith<NutrientDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientDbModelCopyWith<$Res> {
  factory $NutrientDbModelCopyWith(
          NutrientDbModel value, $Res Function(NutrientDbModel) then) =
      _$NutrientDbModelCopyWithImpl<$Res, NutrientDbModel>;
  @useResult
  $Res call(
      {int id,
      int id_nutrient,
      String nutrient,
      String ru_name,
      String en_name,
      String ru_unit,
      String en_unit});
}

/// @nodoc
class _$NutrientDbModelCopyWithImpl<$Res, $Val extends NutrientDbModel>
    implements $NutrientDbModelCopyWith<$Res> {
  _$NutrientDbModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_nutrient = null,
    Object? nutrient = null,
    Object? ru_name = null,
    Object? en_name = null,
    Object? ru_unit = null,
    Object? en_unit = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_nutrient: null == id_nutrient
          ? _value.id_nutrient
          : id_nutrient // ignore: cast_nullable_to_non_nullable
              as int,
      nutrient: null == nutrient
          ? _value.nutrient
          : nutrient // ignore: cast_nullable_to_non_nullable
              as String,
      ru_name: null == ru_name
          ? _value.ru_name
          : ru_name // ignore: cast_nullable_to_non_nullable
              as String,
      en_name: null == en_name
          ? _value.en_name
          : en_name // ignore: cast_nullable_to_non_nullable
              as String,
      ru_unit: null == ru_unit
          ? _value.ru_unit
          : ru_unit // ignore: cast_nullable_to_non_nullable
              as String,
      en_unit: null == en_unit
          ? _value.en_unit
          : en_unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NutrientDbModelCopyWith<$Res>
    implements $NutrientDbModelCopyWith<$Res> {
  factory _$$_NutrientDbModelCopyWith(
          _$_NutrientDbModel value, $Res Function(_$_NutrientDbModel) then) =
      __$$_NutrientDbModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int id_nutrient,
      String nutrient,
      String ru_name,
      String en_name,
      String ru_unit,
      String en_unit});
}

/// @nodoc
class __$$_NutrientDbModelCopyWithImpl<$Res>
    extends _$NutrientDbModelCopyWithImpl<$Res, _$_NutrientDbModel>
    implements _$$_NutrientDbModelCopyWith<$Res> {
  __$$_NutrientDbModelCopyWithImpl(
      _$_NutrientDbModel _value, $Res Function(_$_NutrientDbModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_nutrient = null,
    Object? nutrient = null,
    Object? ru_name = null,
    Object? en_name = null,
    Object? ru_unit = null,
    Object? en_unit = null,
  }) {
    return _then(_$_NutrientDbModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_nutrient: null == id_nutrient
          ? _value.id_nutrient
          : id_nutrient // ignore: cast_nullable_to_non_nullable
              as int,
      nutrient: null == nutrient
          ? _value.nutrient
          : nutrient // ignore: cast_nullable_to_non_nullable
              as String,
      ru_name: null == ru_name
          ? _value.ru_name
          : ru_name // ignore: cast_nullable_to_non_nullable
              as String,
      en_name: null == en_name
          ? _value.en_name
          : en_name // ignore: cast_nullable_to_non_nullable
              as String,
      ru_unit: null == ru_unit
          ? _value.ru_unit
          : ru_unit // ignore: cast_nullable_to_non_nullable
              as String,
      en_unit: null == en_unit
          ? _value.en_unit
          : en_unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutrientDbModel implements _NutrientDbModel {
  const _$_NutrientDbModel(
      {required this.id,
      required this.id_nutrient,
      this.nutrient = '',
      this.ru_name = '',
      this.en_name = '',
      this.ru_unit = '',
      this.en_unit = ''});

  factory _$_NutrientDbModel.fromJson(Map<String, dynamic> json) =>
      _$$_NutrientDbModelFromJson(json);

  @override
  final int id;
  @override
  final int id_nutrient;
  @override
  @JsonKey()
  final String nutrient;
  @override
  @JsonKey()
  final String ru_name;
  @override
  @JsonKey()
  final String en_name;
  @override
  @JsonKey()
  final String ru_unit;
  @override
  @JsonKey()
  final String en_unit;

  @override
  String toString() {
    return 'NutrientDbModel(id: $id, id_nutrient: $id_nutrient, nutrient: $nutrient, ru_name: $ru_name, en_name: $en_name, ru_unit: $ru_unit, en_unit: $en_unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutrientDbModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_nutrient, id_nutrient) ||
                other.id_nutrient == id_nutrient) &&
            (identical(other.nutrient, nutrient) ||
                other.nutrient == nutrient) &&
            (identical(other.ru_name, ru_name) || other.ru_name == ru_name) &&
            (identical(other.en_name, en_name) || other.en_name == en_name) &&
            (identical(other.ru_unit, ru_unit) || other.ru_unit == ru_unit) &&
            (identical(other.en_unit, en_unit) || other.en_unit == en_unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, id_nutrient, nutrient,
      ru_name, en_name, ru_unit, en_unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NutrientDbModelCopyWith<_$_NutrientDbModel> get copyWith =>
      __$$_NutrientDbModelCopyWithImpl<_$_NutrientDbModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutrientDbModelToJson(
      this,
    );
  }
}

abstract class _NutrientDbModel implements NutrientDbModel {
  const factory _NutrientDbModel(
      {required final int id,
      required final int id_nutrient,
      final String nutrient,
      final String ru_name,
      final String en_name,
      final String ru_unit,
      final String en_unit}) = _$_NutrientDbModel;

  factory _NutrientDbModel.fromJson(Map<String, dynamic> json) =
      _$_NutrientDbModel.fromJson;

  @override
  int get id;
  @override
  int get id_nutrient;
  @override
  String get nutrient;
  @override
  String get ru_name;
  @override
  String get en_name;
  @override
  String get ru_unit;
  @override
  String get en_unit;
  @override
  @JsonKey(ignore: true)
  _$$_NutrientDbModelCopyWith<_$_NutrientDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}
