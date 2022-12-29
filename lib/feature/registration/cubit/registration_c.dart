// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dadata/dadata.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class RegistrationCubit extends HydratedCubit<RegistrationState> {
  RegistrationCubit({
    required AppRouter router,
    required DaDataClient clienTips,
  })  : _go = router,
        _clienTips = clienTips,
        super(
          const RegistrationState(
            isLoad: true,
            isValid: false,
            status: FormzSubmissionStatus.initial,
            validNameFormz: ValidNameFormz.pure(),
            validGenderFormz: ValidGenderFormz.pure(),
            genderSelected: [false, false],
          ),
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
    final validNameFormz = ValidNameFormz.dirty(value);
    emit(
      state.copyWith(
        validNameFormz: validNameFormz,
        isValid: Formz.validate([validNameFormz, state.validNameFormz]),
      ),
    );
  }

  void checkAll() {
    final validNameFormz = ValidNameFormz.dirty(state.validNameFormz.value);
    final validGenderFormz =
        ValidGenderFormz.dirty(state.validGenderFormz.value);

    emit(
      state.copyWith(
        validNameFormz: validNameFormz,
        validGenderFormz: validGenderFormz,
        isValid: Formz.validate([validGenderFormz, validNameFormz]),
      ),
    );
  }

  void checkGender(int value) {
    final gender = Gender.values[value];

    final validGenderFormz = ValidGenderFormz.dirty(gender);

    var genderSelected = <bool>[];
    gender.map(
      male: () => genderSelected = [false, true],
      female: () => genderSelected = [true, false],
      none: () => genderSelected = [false, false],
    );

    emit(
      state.copyWith(
        genderSelected: genderSelected,
        validGenderFormz: validGenderFormz,
        isValid: Formz.validate([state.validNameFormz, validGenderFormz]),
      ),
    );
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
  final bool isValid;
  final List<bool> genderSelected;
  final ValidNameFormz validNameFormz;
  final ValidGenderFormz validGenderFormz;
  // enum
  final FormzSubmissionStatus status;
  const RegistrationState({
    required this.isLoad,
    required this.isValid,
    required this.genderSelected,
    required this.validNameFormz,
    required this.validGenderFormz,
    required this.status,
  });

  RegistrationState copyWith({
    bool? isLoad,
    bool? isValid,
    List<bool>? genderSelected,
    ValidNameFormz? validNameFormz,
    ValidGenderFormz? validGenderFormz,
    FormzSubmissionStatus? status,
  }) {
    return RegistrationState(
      isLoad: isLoad ?? this.isLoad,
      isValid: isValid ?? this.isValid,
      genderSelected: genderSelected ?? this.genderSelected,
      validNameFormz: validNameFormz ?? this.validNameFormz,
      validGenderFormz: validGenderFormz ?? this.validGenderFormz,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoad': isLoad,
      'isValid': isValid,
      'genderSelected': genderSelected,
      'validNameFormz': validNameFormz.value,
      'validGenderFormz': validGenderFormz.value.name,
      'status': status.index,
    };
  }

  String toJson() => json.encode(toMap());

  factory RegistrationState.fromJson(String source) =>
      RegistrationState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegistrationState(isLoad: $isLoad, isValid: $isValid, genderSelected: $genderSelected, validNameFormz: $validNameFormz, validGenderFormz: $validGenderFormz, status: $status)';
  }

  @override
  bool operator ==(covariant RegistrationState other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.isLoad == isLoad &&
        other.isValid == isValid &&
        listEquals(other.genderSelected, genderSelected) &&
        other.validNameFormz == validNameFormz &&
        other.validGenderFormz == validGenderFormz &&
        other.status == status;
  }

  @override
  int get hashCode {
    return isLoad.hashCode ^
        isValid.hashCode ^
        genderSelected.hashCode ^
        validNameFormz.hashCode ^
        validGenderFormz.hashCode ^
        status.hashCode;
  }

  factory RegistrationState.fromMap(Map<String, dynamic> map) {
    final valueGender = Gender.fromValue(map['validGenderFormz']);
    ValidGenderFormz validGenderFormz;
    if (valueGender == Gender.none) {
      validGenderFormz = const ValidGenderFormz.pure();
    } else {
      validGenderFormz = ValidGenderFormz.dirty(valueGender);
    }

    final valueName = map['validNameFormz'].toString();
    ValidNameFormz validNameFormz;
    if (valueName.isEmpty) {
      validNameFormz = const ValidNameFormz.pure();
    } else {
      validNameFormz = ValidNameFormz.dirty(valueName);
    }

    return RegistrationState(
      isLoad: (map['isLoad'] ?? false) as bool,
      isValid: (map['isValid'] ?? false) as bool,
      genderSelected: List<bool>.from(
        (map['genderSelected'] ?? const <bool>[]) as List<bool>,
      ),
      // custom
      validNameFormz: validNameFormz,
      // custom
      validGenderFormz: validGenderFormz,
      status: FormzSubmissionStatus.values[(map['status'] ?? 0) as int],
    );
  }
}
