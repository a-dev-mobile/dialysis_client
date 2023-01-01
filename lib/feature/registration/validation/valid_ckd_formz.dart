import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidCkdFormz
    extends FormzInput<CkdEnum, ValidCkdError> {
  const ValidCkdFormz.pure() : super.pure(CkdEnum.none);
  const ValidCkdFormz.dirty([super.value = CkdEnum.none]) : super.dirty();

  @override
  ValidCkdError? validator(CkdEnum value) {
    return value == CkdEnum.none
        ? ValidCkdError.notSelected
        : null;
  }
}

extension ValidCkdX on ValidCkdFormz {
  ValidCkdError get notSelected => ValidCkdError.notSelected;
}

enum ValidCkdError {
  notSelected,
}
