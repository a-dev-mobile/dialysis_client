// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fio_tooltip_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FioTooltip _$FioTooltipFromJson(Map<String, dynamic> json) {
  return _FioTooltip.fromJson(json);
}

/// @nodoc
mixin _$FioTooltip {
  List<SuggestionsFio> get suggestions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FioTooltipCopyWith<FioTooltip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FioTooltipCopyWith<$Res> {
  factory $FioTooltipCopyWith(
          FioTooltip value, $Res Function(FioTooltip) then) =
      _$FioTooltipCopyWithImpl<$Res, FioTooltip>;
  @useResult
  $Res call({List<SuggestionsFio> suggestions});
}

/// @nodoc
class _$FioTooltipCopyWithImpl<$Res, $Val extends FioTooltip>
    implements $FioTooltipCopyWith<$Res> {
  _$FioTooltipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<SuggestionsFio>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FioTooltipCopyWith<$Res>
    implements $FioTooltipCopyWith<$Res> {
  factory _$$_FioTooltipCopyWith(
          _$_FioTooltip value, $Res Function(_$_FioTooltip) then) =
      __$$_FioTooltipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SuggestionsFio> suggestions});
}

/// @nodoc
class __$$_FioTooltipCopyWithImpl<$Res>
    extends _$FioTooltipCopyWithImpl<$Res, _$_FioTooltip>
    implements _$$_FioTooltipCopyWith<$Res> {
  __$$_FioTooltipCopyWithImpl(
      _$_FioTooltip _value, $Res Function(_$_FioTooltip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_$_FioTooltip(
      null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<SuggestionsFio>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FioTooltip implements _FioTooltip {
  _$_FioTooltip(final List<SuggestionsFio> suggestions)
      : _suggestions = suggestions;

  factory _$_FioTooltip.fromJson(Map<String, dynamic> json) =>
      _$$_FioTooltipFromJson(json);

  final List<SuggestionsFio> _suggestions;
  @override
  List<SuggestionsFio> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'FioTooltip(suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FioTooltip &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FioTooltipCopyWith<_$_FioTooltip> get copyWith =>
      __$$_FioTooltipCopyWithImpl<_$_FioTooltip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FioTooltipToJson(
      this,
    );
  }
}

abstract class _FioTooltip implements FioTooltip {
  factory _FioTooltip(final List<SuggestionsFio> suggestions) = _$_FioTooltip;

  factory _FioTooltip.fromJson(Map<String, dynamic> json) =
      _$_FioTooltip.fromJson;

  @override
  List<SuggestionsFio> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$_FioTooltipCopyWith<_$_FioTooltip> get copyWith =>
      throw _privateConstructorUsedError;
}

SuggestionsFio _$SuggestionsFioFromJson(Map<String, dynamic> json) {
  return _Suggestions.fromJson(json);
}

/// @nodoc
mixin _$SuggestionsFio {
  String get value => throw _privateConstructorUsedError;
  String get unrestricted_value => throw _privateConstructorUsedError;
  DataFio get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionsFioCopyWith<SuggestionsFio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionsFioCopyWith<$Res> {
  factory $SuggestionsFioCopyWith(
          SuggestionsFio value, $Res Function(SuggestionsFio) then) =
      _$SuggestionsFioCopyWithImpl<$Res, SuggestionsFio>;
  @useResult
  $Res call({String value, String unrestricted_value, DataFio data});

  $DataFioCopyWith<$Res> get data;
}

/// @nodoc
class _$SuggestionsFioCopyWithImpl<$Res, $Val extends SuggestionsFio>
    implements $SuggestionsFioCopyWith<$Res> {
  _$SuggestionsFioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unrestricted_value = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unrestricted_value: null == unrestricted_value
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataFio,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataFioCopyWith<$Res> get data {
    return $DataFioCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SuggestionsCopyWith<$Res>
    implements $SuggestionsFioCopyWith<$Res> {
  factory _$$_SuggestionsCopyWith(
          _$_Suggestions value, $Res Function(_$_Suggestions) then) =
      __$$_SuggestionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String unrestricted_value, DataFio data});

  @override
  $DataFioCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuggestionsCopyWithImpl<$Res>
    extends _$SuggestionsFioCopyWithImpl<$Res, _$_Suggestions>
    implements _$$_SuggestionsCopyWith<$Res> {
  __$$_SuggestionsCopyWithImpl(
      _$_Suggestions _value, $Res Function(_$_Suggestions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unrestricted_value = null,
    Object? data = null,
  }) {
    return _then(_$_Suggestions(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      null == unrestricted_value
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataFio,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Suggestions implements _Suggestions {
  _$_Suggestions(this.value, this.unrestricted_value, this.data);

  factory _$_Suggestions.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestionsFromJson(json);

  @override
  final String value;
  @override
  final String unrestricted_value;
  @override
  final DataFio data;

  @override
  String toString() {
    return 'SuggestionsFio(value: $value, unrestricted_value: $unrestricted_value, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Suggestions &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unrestricted_value, unrestricted_value) ||
                other.unrestricted_value == unrestricted_value) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, unrestricted_value, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestionsCopyWith<_$_Suggestions> get copyWith =>
      __$$_SuggestionsCopyWithImpl<_$_Suggestions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestionsToJson(
      this,
    );
  }
}

abstract class _Suggestions implements SuggestionsFio {
  factory _Suggestions(final String value, final String unrestricted_value,
      final DataFio data) = _$_Suggestions;

  factory _Suggestions.fromJson(Map<String, dynamic> json) =
      _$_Suggestions.fromJson;

  @override
  String get value;
  @override
  String get unrestricted_value;
  @override
  DataFio get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestionsCopyWith<_$_Suggestions> get copyWith =>
      throw _privateConstructorUsedError;
}

DataFio _$DataFioFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$DataFio {
  String? get surname => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get patronymic => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get qc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataFioCopyWith<DataFio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataFioCopyWith<$Res> {
  factory $DataFioCopyWith(DataFio value, $Res Function(DataFio) then) =
      _$DataFioCopyWithImpl<$Res, DataFio>;
  @useResult
  $Res call(
      {String? surname,
      String? name,
      String? patronymic,
      String? gender,
      String? source,
      String? qc});
}

/// @nodoc
class _$DataFioCopyWithImpl<$Res, $Val extends DataFio>
    implements $DataFioCopyWith<$Res> {
  _$DataFioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = freezed,
    Object? name = freezed,
    Object? patronymic = freezed,
    Object? gender = freezed,
    Object? source = freezed,
    Object? qc = freezed,
  }) {
    return _then(_value.copyWith(
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      qc: freezed == qc
          ? _value.qc
          : qc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataFioCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? surname,
      String? name,
      String? patronymic,
      String? gender,
      String? source,
      String? qc});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataFioCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = freezed,
    Object? name = freezed,
    Object? patronymic = freezed,
    Object? gender = freezed,
    Object? source = freezed,
    Object? qc = freezed,
  }) {
    return _then(_$_Data(
      freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == qc
          ? _value.qc
          : qc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  _$_Data(this.surname, this.name, this.patronymic, this.gender, this.source,
      this.qc);

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? surname;
  @override
  final String? name;
  @override
  final String? patronymic;
  @override
  final String? gender;
  @override
  final String? source;
  @override
  final String? qc;

  @override
  String toString() {
    return 'DataFio(surname: $surname, name: $name, patronymic: $patronymic, gender: $gender, source: $source, qc: $qc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.qc, qc) || other.qc == qc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, surname, name, patronymic, gender, source, qc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements DataFio {
  factory _Data(
      final String? surname,
      final String? name,
      final String? patronymic,
      final String? gender,
      final String? source,
      final String? qc) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get surname;
  @override
  String? get name;
  @override
  String? get patronymic;
  @override
  String? get gender;
  @override
  String? get source;
  @override
  String? get qc;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
