import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidHypertension
    extends FormzInput<HypertensionEnum, ValidHypertensionError> {
  const ValidHypertension.pure() : super.pure(HypertensionEnum.none);
  const ValidHypertension.dirty([super.value = HypertensionEnum.none])
      : super.dirty();

  @override
  ValidHypertensionError? validator(HypertensionEnum value) {
    return value == HypertensionEnum.none
        ? ValidHypertensionError.notSelected
        : null;
  }

  factory ValidHypertension.fromMap(Map<String, dynamic> map) {
    final result = HypertensionEnum.fromValue(
      map['ValidHypertensionFormz'] as String?,
      fallback: HypertensionEnum.none,
    );

    return result == HypertensionEnum.none
        ? const ValidHypertension.pure()
        : ValidHypertension.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidHypertensionFormz': value.name};
  }
}

extension ValidHypertensionX on ValidHypertension {
  ValidHypertensionError get notSelected => ValidHypertensionError.notSelected;
}

enum ValidHypertensionError {
  notSelected,
}
