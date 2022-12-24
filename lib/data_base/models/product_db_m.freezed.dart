// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_db_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDbModel _$ProductDbModelFromJson(Map<String, dynamic> json) {
  return _ProductDbModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDbModel {
  int get id => throw _privateConstructorUsedError;
  int get id_product => throw _privateConstructorUsedError;
  String get ru_name => throw _privateConstructorUsedError;
  String get en_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDbModelCopyWith<ProductDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDbModelCopyWith<$Res> {
  factory $ProductDbModelCopyWith(
          ProductDbModel value, $Res Function(ProductDbModel) then) =
      _$ProductDbModelCopyWithImpl<$Res, ProductDbModel>;
  @useResult
  $Res call({int id, int id_product, String ru_name, String en_name});
}

/// @nodoc
class _$ProductDbModelCopyWithImpl<$Res, $Val extends ProductDbModel>
    implements $ProductDbModelCopyWith<$Res> {
  _$ProductDbModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_product = null,
    Object? ru_name = null,
    Object? en_name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_product: null == id_product
          ? _value.id_product
          : id_product // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ProductDbModelCopyWith<$Res>
    implements $ProductDbModelCopyWith<$Res> {
  factory _$$_ProductDbModelCopyWith(
          _$_ProductDbModel value, $Res Function(_$_ProductDbModel) then) =
      __$$_ProductDbModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int id_product, String ru_name, String en_name});
}

/// @nodoc
class __$$_ProductDbModelCopyWithImpl<$Res>
    extends _$ProductDbModelCopyWithImpl<$Res, _$_ProductDbModel>
    implements _$$_ProductDbModelCopyWith<$Res> {
  __$$_ProductDbModelCopyWithImpl(
      _$_ProductDbModel _value, $Res Function(_$_ProductDbModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_product = null,
    Object? ru_name = null,
    Object? en_name = null,
  }) {
    return _then(_$_ProductDbModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_product: null == id_product
          ? _value.id_product
          : id_product // ignore: cast_nullable_to_non_nullable
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
class _$_ProductDbModel
    with DiagnosticableTreeMixin
    implements _ProductDbModel {
  const _$_ProductDbModel(
      {this.id = -1,
      this.id_product = -1,
      this.ru_name = '',
      this.en_name = ''});

  factory _$_ProductDbModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDbModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int id_product;
  @override
  @JsonKey()
  final String ru_name;
  @override
  @JsonKey()
  final String en_name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductDbModel(id: $id, id_product: $id_product, ru_name: $ru_name, en_name: $en_name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductDbModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('id_product', id_product))
      ..add(DiagnosticsProperty('ru_name', ru_name))
      ..add(DiagnosticsProperty('en_name', en_name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDbModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_product, id_product) ||
                other.id_product == id_product) &&
            (identical(other.ru_name, ru_name) || other.ru_name == ru_name) &&
            (identical(other.en_name, en_name) || other.en_name == en_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, id_product, ru_name, en_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDbModelCopyWith<_$_ProductDbModel> get copyWith =>
      __$$_ProductDbModelCopyWithImpl<_$_ProductDbModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDbModelToJson(
      this,
    );
  }
}

abstract class _ProductDbModel implements ProductDbModel {
  const factory _ProductDbModel(
      {final int id,
      final int id_product,
      final String ru_name,
      final String en_name}) = _$_ProductDbModel;

  factory _ProductDbModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDbModel.fromJson;

  @override
  int get id;
  @override
  int get id_product;
  @override
  String get ru_name;
  @override
  String get en_name;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDbModelCopyWith<_$_ProductDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}
