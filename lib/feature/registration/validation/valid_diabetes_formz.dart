import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidDiabetesFormz
    extends FormzInput<DiabetesEnum, ValidDiabetesError> {
  const ValidDiabetesFormz.pure() : super.pure(DiabetesEnum.none);
  const ValidDiabetesFormz.dirty([super.value = DiabetesEnum.none])
      : super.dirty();

  @override
  ValidDiabetesError? validator(DiabetesEnum value) {
    return value == DiabetesEnum.none
        ? ValidDiabetesError.notSelected
        : null;
  }
}

extension ValidDiabetesX on ValidDiabetesFormz {
  ValidDiabetesError get notSelected => ValidDiabetesError.notSelected;
}

enum ValidDiabetesError {
  notSelected,
}
