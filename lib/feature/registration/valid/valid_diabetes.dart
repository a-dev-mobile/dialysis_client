import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidDiabetes extends FormzInput<DiabetesEnum, ValidDiabetesError> {
  const ValidDiabetes.pure() : super.pure(DiabetesEnum.none);
  const ValidDiabetes.dirty([super.value = DiabetesEnum.none]) : super.dirty();

  @override
  ValidDiabetesError? validator(DiabetesEnum value) {
    return value == DiabetesEnum.none ? ValidDiabetesError.notSelected : null;
  }

  factory ValidDiabetes.fromMap(Map<String, dynamic> map) {
    final result = DiabetesEnum.fromValue(
      map['ValidDiabetesFormz'] as String?,
      fallback: DiabetesEnum.none,
    );

    return result == DiabetesEnum.none
        ? const ValidDiabetes.pure()
        : ValidDiabetes.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidDiabetesFormz': value.name};
  }
}

extension ValidDiabetesX on ValidDiabetes {
  ValidDiabetesError get notSelected => ValidDiabetesError.notSelected;
}

enum ValidDiabetesError {
  notSelected,
}
