// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrient_type_db_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutrientTypeDbModel _$NutrientTypeDbModelFromJson(Map<String, dynamic> json) {
  return _NutrientTypeDbModel.fromJson(json);
}

/// @nodoc
mixin _$NutrientTypeDbModel {
  int get id => throw _privateConstructorUsedError;
  int get id_nutrient_type => throw _privateConstructorUsedError;
  String get ru_name => throw _privateConstructorUsedError;
  String get en_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientTypeDbModelCopyWith<NutrientTypeDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientTypeDbModelCopyWith<$Res> {
  factory $NutrientTypeDbModelCopyWith(
          NutrientTypeDbModel value, $Res Function(NutrientTypeDbModel) then) =
      _$NutrientTypeDbModelCopyWithImpl<$Res, NutrientTypeDbModel>;
  @useResult
  $Res call({int id, int id_nutrient_type, String ru_name, String en_name});
}

/// @nodoc
class _$NutrientTypeDbModelCopyWithImpl<$Res, $Val extends NutrientTypeDbModel>
    implements $NutrientTypeDbModelCopyWith<$Res> {
  _$NutrientTypeDbModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_nutrient_type = null,
    Object? ru_name = null,
    Object? en_name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_nutrient_type: null == id_nutrient_type
          ? _value.id_nutrient_type
          : id_nutrient_type // ignore: cast_nullable_to_non_nullable
              as int,
      ru_name: null == ru_name
          ? _value.ru_name
          : ru_name // ignore: cast_nullable_to_non_nullable
              as String,
      en_name: null == en_name
          ? _value.en_name
          : en_name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NutrientTypeDbModelCopyWith<$Res>
    implements $NutrientTypeDbModelCopyWith<$Res> {
  factory _$$_NutrientTypeDbModelCopyWith(_$_NutrientTypeDbModel value,
          $Res Function(_$_NutrientTypeDbModel) then) =
      __$$_NutrientTypeDbModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int id_nutrient_type, String ru_name, String en_name});
}

/// @nodoc
class __$$_NutrientTypeDbModelCopyWithImpl<$Res>
    extends _$NutrientTypeDbModelCopyWithImpl<$Res, _$_NutrientTypeDbModel>
    implements _$$_NutrientTypeDbModelCopyWith<$Res> {
  __$$_NutrientTypeDbModelCopyWithImpl(_$_NutrientTypeDbModel _value,
      $Res Function(_$_NutrientTypeDbModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_nutrient_type = null,
    Object? ru_name = null,
    Object? en_name = null,
  }) {
    return _then(_$_NutrientTypeDbModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_nutrient_type: null == id_nutrient_type
          ? _value.id_nutrient_type
          : id_nutrient_type // ignore: cast_nullable_to_non_nullable
              as int,
      ru_name: null == ru_name
          ? _value.ru_name
          : ru_name // ignore: cast_nullable_to_non_nullable
              as String,
      en_name: null == en_name
          ? _value.en_name
          : en_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutrientTypeDbModel implements _NutrientTypeDbModel {
  const _$_NutrientTypeDbModel(
      {required this.id,
      required this.id_nutrient_type,
      this.ru_name = '',
      this.en_name = ''});

  factory _$_NutrientTypeDbModel.fromJson(Map<String, dynamic> json) =>
      _$$_NutrientTypeDbModelFromJson(json);

  @override
  final int id;
  @override
  final int id_nutrient_type;
  @override
  @JsonKey()
  final String ru_name;
  @override
  @JsonKey()
  final String en_name;

  @override
  String toString() {
    return 'NutrientTypeDbModel(id: $id, id_nutrient_type: $id_nutrient_type, ru_name: $ru_name, en_name: $en_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutrientTypeDbModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_nutrient_type, id_nutrient_type) ||
                other.id_nutrient_type == id_nutrient_type) &&
            (identical(other.ru_name, ru_name) || other.ru_name == ru_name) &&
            (identical(other.en_name, en_name) || other.en_name == en_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, id_nutrient_type, ru_name, en_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NutrientTypeDbModelCopyWith<_$_NutrientTypeDbModel> get copyWith =>
      __$$_NutrientTypeDbModelCopyWithImpl<_$_NutrientTypeDbModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutrientTypeDbModelToJson(
      this,
    );
  }
}

abstract class _NutrientTypeDbModel implements NutrientTypeDbModel {
  const factory _NutrientTypeDbModel(
      {required final int id,
      required final int id_nutrient_type,
      final String ru_name,
      final String en_name}) = _$_NutrientTypeDbModel;

  factory _NutrientTypeDbModel.fromJson(Map<String, dynamic> json) =
      _$_NutrientTypeDbModel.fromJson;

  @override
  int get id;
  @override
  int get id_nutrient_type;
  @override
  String get ru_name;
  @override
  String get en_name;
  @override
  @JsonKey(ignore: true)
  _$$_NutrientTypeDbModelCopyWith<_$_NutrientTypeDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}
