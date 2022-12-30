import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidGenderFormz
    extends FormzInput<GenderEnum, ValidGenderError> {
  const ValidGenderFormz.pure() : super.pure(GenderEnum.none);
  const ValidGenderFormz.dirty([super.value = GenderEnum.none]) : super.dirty();

  @override
  ValidGenderError? validator(GenderEnum value) {
    return value == GenderEnum.none
        ? ValidGenderError.notSelected
        : null;
  }
}

extension ValidGenderX on ValidGenderFormz {
  ValidGenderError get notSelected =>
      ValidGenderError.notSelected;
  GenderEnum get genderMale => GenderEnum.male;
  GenderEnum get genderFemale => GenderEnum.female;
  GenderEnum get genderNone => GenderEnum.none;
}

enum ValidGenderError {
  notSelected,
}
