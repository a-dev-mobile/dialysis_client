// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_reg_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateRegModel _$DateRegModelFromJson(Map<String, dynamic> json) {
  return _DateRegModel.fromJson(json);
}

/// @nodoc
mixin _$DateRegModel {
  List<String> get days => throw _privateConstructorUsedError;
  List<String> get months => throw _privateConstructorUsedError;
  List<String> get years => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateRegModelCopyWith<DateRegModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateRegModelCopyWith<$Res> {
  factory $DateRegModelCopyWith(
          DateRegModel value, $Res Function(DateRegModel) then) =
      _$DateRegModelCopyWithImpl<$Res, DateRegModel>;
  @useResult
  $Res call({List<String> days, List<String> months, List<String> years});
}

/// @nodoc
class _$DateRegModelCopyWithImpl<$Res, $Val extends DateRegModel>
    implements $DateRegModelCopyWith<$Res> {
  _$DateRegModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? months = null,
    Object? years = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>,
      months: null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as List<String>,
      years: null == years
          ? _value.years
          : years // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateRegModelCopyWith<$Res>
    implements $DateRegModelCopyWith<$Res> {
  factory _$$_DateRegModelCopyWith(
          _$_DateRegModel value, $Res Function(_$_DateRegModel) then) =
      __$$_DateRegModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> days, List<String> months, List<String> years});
}

/// @nodoc
class __$$_DateRegModelCopyWithImpl<$Res>
    extends _$DateRegModelCopyWithImpl<$Res, _$_DateRegModel>
    implements _$$_DateRegModelCopyWith<$Res> {
  __$$_DateRegModelCopyWithImpl(
      _$_DateRegModel _value, $Res Function(_$_DateRegModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? months = null,
    Object? years = null,
  }) {
    return _then(_$_DateRegModel(
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>,
      months: null == months
          ? _value._months
          : months // ignore: cast_nullable_to_non_nullable
              as List<String>,
      years: null == years
          ? _value._years
          : years // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateRegModel extends _DateRegModel {
  const _$_DateRegModel(
      {final List<String> days = const [],
      final List<String> months = const [],
      final List<String> years = const []})
      : _days = days,
        _months = months,
        _years = years,
        super._();

  factory _$_DateRegModel.fromJson(Map<String, dynamic> json) =>
      _$$_DateRegModelFromJson(json);

  final List<String> _days;
  @override
  @JsonKey()
  List<String> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final List<String> _months;
  @override
  @JsonKey()
  List<String> get months {
    if (_months is EqualUnmodifiableListView) return _months;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_months);
  }

  final List<String> _years;
  @override
  @JsonKey()
  List<String> get years {
    if (_years is EqualUnmodifiableListView) return _years;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_years);
  }

  @override
  String toString() {
    return 'DateRegModel(days: $days, months: $months, years: $years)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateRegModel &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality().equals(other._months, _months) &&
            const DeepCollectionEquality().equals(other._years, _years));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_days),
      const DeepCollectionEquality().hash(_months),
      const DeepCollectionEquality().hash(_years));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateRegModelCopyWith<_$_DateRegModel> get copyWith =>
      __$$_DateRegModelCopyWithImpl<_$_DateRegModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateRegModelToJson(
      this,
    );
  }
}

abstract class _DateRegModel extends DateRegModel {
  const factory _DateRegModel(
      {final List<String> days,
      final List<String> months,
      final List<String> years}) = _$_DateRegModel;
  const _DateRegModel._() : super._();

  factory _DateRegModel.fromJson(Map<String, dynamic> json) =
      _$_DateRegModel.fromJson;

  @override
  List<String> get days;
  @override
  List<String> get months;
  @override
  List<String> get years;
  @override
  @JsonKey(ignore: true)
  _$$_DateRegModelCopyWith<_$_DateRegModel> get copyWith =>
      throw _privateConstructorUsedError;
}
