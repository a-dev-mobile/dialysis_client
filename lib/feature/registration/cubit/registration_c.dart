// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

import 'dart:convert';

import 'package:dadata/dadata.dart';
import 'package:dialysis/feature/common/enums/enums.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class RegistrationCubit extends HydratedCubit<RegistrationState> {
  RegistrationCubit({
    required AppRouter router,
    required DaDataClient clienTips,
  })  : _go = router,
        _clienTips = clienTips,
        super(
          RegistrationState.init(),
        );
  final DaDataClient _clienTips;

  // ignore: unused_field
  final AppRouter _go;

  void load() {}

  Future<List<String>> getSuggestionsName(String value) async {
    final result = await _clienTips.fetchFioTooltip(value, DaDataEnum.name);

    return _getTips(result);
  }

  void checkName(String value) {
    final nameValid = NameValid.dirty(value);

    emit(
      state.copyWith(
        nameValid: nameValid,
        status: Formz.validate([
          nameValid,
          // state.genderValid,
        ]),
      ),
    );

    // _sendState();
  }

  void checkGender(Gender value) {
    final genderValid = GenderValid.dirty(value);

    emit(
      state.copyWith(
        // genderValid: genderValid,
        status: Formz.validate([
          state.nameValid,
          genderValid,
        ]),
      ),
    );
  }

  bool isValid() {
    return state.status.isValidated;
  }

  List<String> _getTips(FioTooltip result) {
    final list = <String>[];
    final length = result.suggestions.length;
    if (length == 0) return list;

    for (var i = 0; i < length; i++) {
      list.add(
        result.suggestions[i].value,
      );
    }

    return list;
  }

  @override
  RegistrationState? fromJson(Map<String, dynamic> json) {
    return RegistrationState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(RegistrationState state) {
    return state.toMap();
  }
}

@immutable
class RegistrationState {
  final bool isLoad;
  // enum
  final FormzStatus status;
  final NameValid nameValid;
  // final GenderValid genderValid;
  const RegistrationState({
    required this.isLoad,
    required this.status,
    required this.nameValid,
  });

  factory RegistrationState.init() => const RegistrationState(
        nameValid: NameValid.pure(),
        isLoad: false,
        // genderValid: GenderValid.pure(),
        status: FormzStatus.pure,
      );

  RegistrationState copyWith({
    bool? isLoad,
    FormzStatus? status,
    NameValid? nameValid,
  }) {
    return RegistrationState(
      isLoad: isLoad ?? this.isLoad,
      status: status ?? this.status,
      nameValid: nameValid ?? this.nameValid,
    );
  }
Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoad': isLoad,
      'status': status.index,
      'nameValid': nameValid.value,
      // 'genderValid': genderValid.value,
    };
  }

  factory RegistrationState.fromMap(Map<String, dynamic> map) {
    return RegistrationState(
      isLoad: map['isLoad'] as bool,
      status: FormzStatus.values[map['status'] as int],
      nameValid: NameValid.dirty(map['nameValid'].toString()),
      // genderValid:
      //     GenderValid.dirty(Gender.fromValue(map['genderValid'].toString())),
    );
  }

  String toJson() => json.encode(toMap());

  factory RegistrationState.fromJson(String source) =>
      RegistrationState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RegistrationState(isLoad: $isLoad, status: $status, nameValid: $nameValid)';

  @override
  bool operator ==(covariant RegistrationState other) {
    if (identical(this, other)) return true;
  
    return 
      other.isLoad == isLoad &&
      other.status == status &&
      other.nameValid == nameValid;
  }

  @override
  int get hashCode => isLoad.hashCode ^ status.hashCode ^ nameValid.hashCode;
}
