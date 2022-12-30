// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_db_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateDbModel _$DateDbModelFromJson(Map<String, dynamic> json) {
  return _DateDbModel.fromJson(json);
}

/// @nodoc
mixin _$DateDbModel {
  int get id => throw _privateConstructorUsedError;
  String get ru_month => throw _privateConstructorUsedError;
  String get en_month => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateDbModelCopyWith<DateDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateDbModelCopyWith<$Res> {
  factory $DateDbModelCopyWith(
          DateDbModel value, $Res Function(DateDbModel) then) =
      _$DateDbModelCopyWithImpl<$Res, DateDbModel>;
  @useResult
  $Res call({int id, String ru_month, String en_month, int year});
}

/// @nodoc
class _$DateDbModelCopyWithImpl<$Res, $Val extends DateDbModel>
    implements $DateDbModelCopyWith<$Res> {
  _$DateDbModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ru_month = null,
    Object? en_month = null,
    Object? year = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ru_month: null == ru_month
          ? _value.ru_month
          : ru_month // ignore: cast_nullable_to_non_nullable
              as String,
      en_month: null == en_month
          ? _value.en_month
          : en_month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateDbModelCopyWith<$Res>
    implements $DateDbModelCopyWith<$Res> {
  factory _$$_DateDbModelCopyWith(
          _$_DateDbModel value, $Res Function(_$_DateDbModel) then) =
      __$$_DateDbModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String ru_month, String en_month, int year});
}

/// @nodoc
class __$$_DateDbModelCopyWithImpl<$Res>
    extends _$DateDbModelCopyWithImpl<$Res, _$_DateDbModel>
    implements _$$_DateDbModelCopyWith<$Res> {
  __$$_DateDbModelCopyWithImpl(
      _$_DateDbModel _value, $Res Function(_$_DateDbModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ru_month = null,
    Object? en_month = null,
    Object? year = null,
  }) {
    return _then(_$_DateDbModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ru_month: null == ru_month
          ? _value.ru_month
          : ru_month // ignore: cast_nullable_to_non_nullable
              as String,
      en_month: null == en_month
          ? _value.en_month
          : en_month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateDbModel implements _DateDbModel {
  const _$_DateDbModel(
      {this.id = -1, this.ru_month = '', this.en_month = '', this.year = -1});

  factory _$_DateDbModel.fromJson(Map<String, dynamic> json) =>
      _$$_DateDbModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String ru_month;
  @override
  @JsonKey()
  final String en_month;
  @override
  @JsonKey()
  final int year;

  @override
  String toString() {
    return 'DateDbModel(id: $id, ru_month: $ru_month, en_month: $en_month, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateDbModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ru_month, ru_month) ||
                other.ru_month == ru_month) &&
            (identical(other.en_month, en_month) ||
                other.en_month == en_month) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, ru_month, en_month, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateDbModelCopyWith<_$_DateDbModel> get copyWith =>
      __$$_DateDbModelCopyWithImpl<_$_DateDbModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateDbModelToJson(
      this,
    );
  }
}

abstract class _DateDbModel implements DateDbModel {
  const factory _DateDbModel(
      {final int id,
      final String ru_month,
      final String en_month,
      final int year}) = _$_DateDbModel;

  factory _DateDbModel.fromJson(Map<String, dynamic> json) =
      _$_DateDbModel.fromJson;

  @override
  int get id;
  @override
  String get ru_month;
  @override
  String get en_month;
  @override
  int get year;
  @override
  @JsonKey(ignore: true)
  _$$_DateDbModelCopyWith<_$_DateDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}
