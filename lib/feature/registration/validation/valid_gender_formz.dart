
import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidGenderFormz extends FormzInput<Gender, ValidGenderFormzationError> {
  const ValidGenderFormz.pure() : super.pure(Gender.none);
  const ValidGenderFormz.dirty([super.value = Gender.none]) : super.dirty();

  @override
  ValidGenderFormzationError? validator(Gender value) {
    return value == Gender.none ? ValidGenderFormzationError.notSelected : null;
  }
}

extension ValidGenderX on ValidGenderFormz {
  ValidGenderFormzationError get notSelected =>
      ValidGenderFormzationError.notSelected;
  Gender get genderMale => Gender.male;
  Gender get genderFemale => Gender.female;
  Gender get genderNone => Gender.none;
}

enum ValidGenderFormzationError {
  notSelected,
}
