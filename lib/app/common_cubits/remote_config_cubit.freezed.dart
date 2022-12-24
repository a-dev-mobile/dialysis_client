// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteConfigState {
  bool get isLoad => throw _privateConstructorUsedError;
  bool get isNeedUpdate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteConfigStateCopyWith<RemoteConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigStateCopyWith<$Res> {
  factory $RemoteConfigStateCopyWith(
          RemoteConfigState value, $Res Function(RemoteConfigState) then) =
      _$RemoteConfigStateCopyWithImpl<$Res, RemoteConfigState>;
  @useResult
  $Res call({bool isLoad, bool isNeedUpdate});
}

/// @nodoc
class _$RemoteConfigStateCopyWithImpl<$Res, $Val extends RemoteConfigState>
    implements $RemoteConfigStateCopyWith<$Res> {
  _$RemoteConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoad = null,
    Object? isNeedUpdate = null,
  }) {
    return _then(_value.copyWith(
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      isNeedUpdate: null == isNeedUpdate
          ? _value.isNeedUpdate
          : isNeedUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteConfigStateCopyWith<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  factory _$$_RemoteConfigStateCopyWith(_$_RemoteConfigState value,
          $Res Function(_$_RemoteConfigState) then) =
      __$$_RemoteConfigStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoad, bool isNeedUpdate});
}

/// @nodoc
class __$$_RemoteConfigStateCopyWithImpl<$Res>
    extends _$RemoteConfigStateCopyWithImpl<$Res, _$_RemoteConfigState>
    implements _$$_RemoteConfigStateCopyWith<$Res> {
  __$$_RemoteConfigStateCopyWithImpl(
      _$_RemoteConfigState _value, $Res Function(_$_RemoteConfigState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoad = null,
    Object? isNeedUpdate = null,
  }) {
    return _then(_$_RemoteConfigState(
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      isNeedUpdate: null == isNeedUpdate
          ? _value.isNeedUpdate
          : isNeedUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RemoteConfigState
    with DiagnosticableTreeMixin
    implements _RemoteConfigState {
  const _$_RemoteConfigState({this.isLoad = true, this.isNeedUpdate = false});

  @override
  @JsonKey()
  final bool isLoad;
  @override
  @JsonKey()
  final bool isNeedUpdate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteConfigState(isLoad: $isLoad, isNeedUpdate: $isNeedUpdate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteConfigState'))
      ..add(DiagnosticsProperty('isLoad', isLoad))
      ..add(DiagnosticsProperty('isNeedUpdate', isNeedUpdate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteConfigState &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad) &&
            (identical(other.isNeedUpdate, isNeedUpdate) ||
                other.isNeedUpdate == isNeedUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoad, isNeedUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteConfigStateCopyWith<_$_RemoteConfigState> get copyWith =>
      __$$_RemoteConfigStateCopyWithImpl<_$_RemoteConfigState>(
          this, _$identity);
}

abstract class _RemoteConfigState implements RemoteConfigState {
  const factory _RemoteConfigState(
      {final bool isLoad, final bool isNeedUpdate}) = _$_RemoteConfigState;

  @override
  bool get isLoad;
  @override
  bool get isNeedUpdate;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteConfigStateCopyWith<_$_RemoteConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}
