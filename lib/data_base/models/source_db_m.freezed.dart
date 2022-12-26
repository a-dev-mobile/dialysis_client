// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_db_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SourceDbModel _$SourceDbModelFromJson(Map<String, dynamic> json) {
  return _SourceDbModel.fromJson(json);
}

/// @nodoc
mixin _$SourceDbModel {
  int get id => throw _privateConstructorUsedError;
  int get id_source => throw _privateConstructorUsedError;
  String get ru_name => throw _privateConstructorUsedError;
  String get en_name => throw _privateConstructorUsedError;
  String get ru_abbrev => throw _privateConstructorUsedError;
  String get en_abbrev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceDbModelCopyWith<SourceDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceDbModelCopyWith<$Res> {
  factory $SourceDbModelCopyWith(
          SourceDbModel value, $Res Function(SourceDbModel) then) =
      _$SourceDbModelCopyWithImpl<$Res, SourceDbModel>;
  @useResult
  $Res call(
      {int id,
      int id_source,
      String ru_name,
      String en_name,
      String ru_abbrev,
      String en_abbrev});
}

/// @nodoc
class _$SourceDbModelCopyWithImpl<$Res, $Val extends SourceDbModel>
    implements $SourceDbModelCopyWith<$Res> {
  _$SourceDbModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_source = null,
    Object? ru_name = null,
    Object? en_name = null,
    Object? ru_abbrev = null,
    Object? en_abbrev = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_source: null == id_source
          ? _value.id_source
          : id_source // ignore: cast_nullable_to_non_nullable
              as int,
      ru_name: null == ru_name
          ? _value.ru_name
          : ru_name // ignore: cast_nullable_to_non_nullable
              as String,
      en_name: null == en_name
          ? _value.en_name
          : en_name // ignore: cast_nullable_to_non_nullable
              as String,
      ru_abbrev: null == ru_abbrev
          ? _value.ru_abbrev
          : ru_abbrev // ignore: cast_nullable_to_non_nullable
              as String,
      en_abbrev: null == en_abbrev
          ? _value.en_abbrev
          : en_abbrev // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourceDbModelCopyWith<$Res>
    implements $SourceDbModelCopyWith<$Res> {
  factory _$$_SourceDbModelCopyWith(
          _$_SourceDbModel value, $Res Function(_$_SourceDbModel) then) =
      __$$_SourceDbModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int id_source,
      String ru_name,
      String en_name,
      String ru_abbrev,
      String en_abbrev});
}

/// @nodoc
class __$$_SourceDbModelCopyWithImpl<$Res>
    extends _$SourceDbModelCopyWithImpl<$Res, _$_SourceDbModel>
    implements _$$_SourceDbModelCopyWith<$Res> {
  __$$_SourceDbModelCopyWithImpl(
      _$_SourceDbModel _value, $Res Function(_$_SourceDbModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? id_source = null,
    Object? ru_name = null,
    Object? en_name = null,
    Object? ru_abbrev = null,
    Object? en_abbrev = null,
  }) {
    return _then(_$_SourceDbModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      id_source: null == id_source
          ? _value.id_source
          : id_source // ignore: cast_nullable_to_non_nullable
              as int,
      ru_name: null == ru_name
          ? _value.ru_name
          : ru_name // ignore: cast_nullable_to_non_nullable
              as String,
      en_name: null == en_name
          ? _value.en_name
          : en_name // ignore: cast_nullable_to_non_nullable
              as String,
      ru_abbrev: null == ru_abbrev
          ? _value.ru_abbrev
          : ru_abbrev // ignore: cast_nullable_to_non_nullable
              as String,
      en_abbrev: null == en_abbrev
          ? _value.en_abbrev
          : en_abbrev // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SourceDbModel implements _SourceDbModel {
  const _$_SourceDbModel(
      {required this.id,
      required this.id_source,
      this.ru_name = '',
      this.en_name = '',
      this.ru_abbrev = '',
      this.en_abbrev = ''});

  factory _$_SourceDbModel.fromJson(Map<String, dynamic> json) =>
      _$$_SourceDbModelFromJson(json);

  @override
  final int id;
  @override
  final int id_source;
  @override
  @JsonKey()
  final String ru_name;
  @override
  @JsonKey()
  final String en_name;
  @override
  @JsonKey()
  final String ru_abbrev;
  @override
  @JsonKey()
  final String en_abbrev;

  @override
  String toString() {
    return 'SourceDbModel(id: $id, id_source: $id_source, ru_name: $ru_name, en_name: $en_name, ru_abbrev: $ru_abbrev, en_abbrev: $en_abbrev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourceDbModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_source, id_source) ||
                other.id_source == id_source) &&
            (identical(other.ru_name, ru_name) || other.ru_name == ru_name) &&
            (identical(other.en_name, en_name) || other.en_name == en_name) &&
            (identical(other.ru_abbrev, ru_abbrev) ||
                other.ru_abbrev == ru_abbrev) &&
            (identical(other.en_abbrev, en_abbrev) ||
                other.en_abbrev == en_abbrev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, id_source, ru_name, en_name, ru_abbrev, en_abbrev);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourceDbModelCopyWith<_$_SourceDbModel> get copyWith =>
      __$$_SourceDbModelCopyWithImpl<_$_SourceDbModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourceDbModelToJson(
      this,
    );
  }
}

abstract class _SourceDbModel implements SourceDbModel {
  const factory _SourceDbModel(
      {required final int id,
      required final int id_source,
      final String ru_name,
      final String en_name,
      final String ru_abbrev,
      final String en_abbrev}) = _$_SourceDbModel;

  factory _SourceDbModel.fromJson(Map<String, dynamic> json) =
      _$_SourceDbModel.fromJson;

  @override
  int get id;
  @override
  int get id_source;
  @override
  String get ru_name;
  @override
  String get en_name;
  @override
  String get ru_abbrev;
  @override
  String get en_abbrev;
  @override
  @JsonKey(ignore: true)
  _$$_SourceDbModelCopyWith<_$_SourceDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}
