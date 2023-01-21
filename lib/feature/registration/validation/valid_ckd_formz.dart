import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidCkdFormz extends FormzInput<CkdEnum, ValidCkdError> {
  const ValidCkdFormz.pure() : super.pure(CkdEnum.none);
  const ValidCkdFormz.dirty([super.value = CkdEnum.none]) : super.dirty();

  @override
  ValidCkdError? validator(CkdEnum value) {
    return value == CkdEnum.none ? ValidCkdError.notSelected : null;
  }

  factory ValidCkdFormz.fromMap(Map<String, dynamic> map) {
    final result = CkdEnum.fromValue(
      map['ValidCkdFormz'] as String?,
      fallback: CkdEnum.none,
    );

    return result == CkdEnum.none
        ? const ValidCkdFormz.pure()
        : ValidCkdFormz.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidCkdFormz': value.name};
  }
}

extension ValidCkdX on ValidCkdFormz {
  ValidCkdError get notSelected => ValidCkdError.notSelected;
}

enum ValidCkdError {
  notSelected,
}
