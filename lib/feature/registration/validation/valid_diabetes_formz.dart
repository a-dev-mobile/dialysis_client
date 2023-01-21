import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidDiabetesFormz extends FormzInput<DiabetesEnum, ValidDiabetesError> {
  const ValidDiabetesFormz.pure() : super.pure(DiabetesEnum.none);
  const ValidDiabetesFormz.dirty([super.value = DiabetesEnum.none])
      : super.dirty();

  @override
  ValidDiabetesError? validator(DiabetesEnum value) {
    return value == DiabetesEnum.none ? ValidDiabetesError.notSelected : null;
  }

  factory ValidDiabetesFormz.fromMap(Map<String, dynamic> map) {
    final result = DiabetesEnum.fromValue(
      map['ValidDiabetesFormz'] as String?,
      fallback: DiabetesEnum.none,
    );

    return result == DiabetesEnum.none
        ? const ValidDiabetesFormz.pure()
        : ValidDiabetesFormz.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidDiabetesFormz': value.name};
  }
}

extension ValidDiabetesX on ValidDiabetesFormz {
  ValidDiabetesError get notSelected => ValidDiabetesError.notSelected;
}

enum ValidDiabetesError {
  notSelected,
}
