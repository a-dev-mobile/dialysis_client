// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_db_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDbModel _$CategoryDbModelFromJson(Map<String, dynamic> json) {
  return _CategoryDbModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryDbModel {
  int get id => throw _privateConstructorUsedError;
  int get id_category => throw _privateConstructorUsedError;
  String get ru_name => throw _privateConstructorUsedError;
  String get en_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDbModelCopyWith<CategoryDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDbModelCopyWith<$Res> {
  factory $CategoryDbModelCopyWith(
          CategoryDbModel value, $Res Function(CategoryDbModel) then) =
      _$CategoryDbModelCopyWithImpl<$Res, CategoryDbModel>;
  @useResult
  $Res call({int id, int id_category, String ru_name, String en_name});
}

/// @nodoc
class _$CategoryDbModelCopyWithImpl<$Res, $Val extends CategoryDbModel>
    implements $CategoryDbModelCopyWith<$Res> {
  _$CategoryDbModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_category = null,
    Object? ru_name = null,
    Object? en_name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_category: null == id_category
          ? _value.id_category
          : id_category // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CategoryDbModelCopyWith<$Res>
    implements $CategoryDbModelCopyWith<$Res> {
  factory _$$_CategoryDbModelCopyWith(
          _$_CategoryDbModel value, $Res Function(_$_CategoryDbModel) then) =
      __$$_CategoryDbModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int id_category, String ru_name, String en_name});
}

/// @nodoc
class __$$_CategoryDbModelCopyWithImpl<$Res>
    extends _$CategoryDbModelCopyWithImpl<$Res, _$_CategoryDbModel>
    implements _$$_CategoryDbModelCopyWith<$Res> {
  __$$_CategoryDbModelCopyWithImpl(
      _$_CategoryDbModel _value, $Res Function(_$_CategoryDbModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_category = null,
    Object? ru_name = null,
    Object? en_name = null,
  }) {
    return _then(_$_CategoryDbModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_category: null == id_category
          ? _value.id_category
          : id_category // ignore: cast_nullable_to_non_nullable
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
class _$_CategoryDbModel implements _CategoryDbModel {
  const _$_CategoryDbModel(
      {required this.id,
      required this.id_category,
      this.ru_name = '',
      this.en_name = ''});

  factory _$_CategoryDbModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDbModelFromJson(json);

  @override
  final int id;
  @override
  final int id_category;
  @override
  @JsonKey()
  final String ru_name;
  @override
  @JsonKey()
  final String en_name;

  @override
  String toString() {
    return 'CategoryDbModel(id: $id, id_category: $id_category, ru_name: $ru_name, en_name: $en_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDbModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_category, id_category) ||
                other.id_category == id_category) &&
            (identical(other.ru_name, ru_name) || other.ru_name == ru_name) &&
            (identical(other.en_name, en_name) || other.en_name == en_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, id_category, ru_name, en_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDbModelCopyWith<_$_CategoryDbModel> get copyWith =>
      __$$_CategoryDbModelCopyWithImpl<_$_CategoryDbModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDbModelToJson(
      this,
    );
  }
}

abstract class _CategoryDbModel implements CategoryDbModel {
  const factory _CategoryDbModel(
      {required final int id,
      required final int id_category,
      final String ru_name,
      final String en_name}) = _$_CategoryDbModel;

  factory _CategoryDbModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryDbModel.fromJson;

  @override
  int get id;
  @override
  int get id_category;
  @override
  String get ru_name;
  @override
  String get en_name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDbModelCopyWith<_$_CategoryDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}
