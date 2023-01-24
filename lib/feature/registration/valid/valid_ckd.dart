import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidCkd extends FormzInput<CkdEnum, ValidCkdError> {
  const ValidCkd.pure() : super.pure(CkdEnum.none);
  const ValidCkd.dirty([super.value = CkdEnum.none]) : super.dirty();

  @override
  ValidCkdError? validator(CkdEnum value) {
    return value == CkdEnum.none ? ValidCkdError.notSelected : null;
  }

  factory ValidCkd.fromMap(Map<String, dynamic> map) {
    final result = CkdEnum.fromValue(
      map['ValidCkdFormz'] as String?,
      fallback: CkdEnum.none,
    );

    return result == CkdEnum.none
        ? const ValidCkd.pure()
        : ValidCkd.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidCkdFormz': value.name};
  }
}

extension ValidCkdX on ValidCkd {
  ValidCkdError get notSelected => ValidCkdError.notSelected;
}

enum ValidCkdError {
  notSelected,
}
