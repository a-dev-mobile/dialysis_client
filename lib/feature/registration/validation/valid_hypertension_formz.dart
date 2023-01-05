import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidHypertensionFormz
    extends FormzInput<HypertensionEnum, ValidHypertensionError> {
  const ValidHypertensionFormz.pure() : super.pure(HypertensionEnum.none);
  const ValidHypertensionFormz.dirty([super.value = HypertensionEnum.none])
      : super.dirty();

  @override
  ValidHypertensionError? validator(HypertensionEnum value) {
    return value == HypertensionEnum.none
        ? ValidHypertensionError.notSelected
        : null;
  }
}

extension ValidHypertensionX on ValidHypertensionFormz {
  ValidHypertensionError get notSelected => ValidHypertensionError.notSelected;
}

enum ValidHypertensionError {
  notSelected,
}
