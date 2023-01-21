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

  factory ValidHypertensionFormz.fromMap(Map<String, dynamic> map) {
    final result = HypertensionEnum.fromValue(
      map['ValidHypertensionFormz'] as String?,
      fallback: HypertensionEnum.none,
    );

    return result == HypertensionEnum.none
        ? const ValidHypertensionFormz.pure()
        : ValidHypertensionFormz.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidHypertensionFormz': value.name};
  }
}

extension ValidHypertensionX on ValidHypertensionFormz {
  ValidHypertensionError get notSelected => ValidHypertensionError.notSelected;
}

enum ValidHypertensionError {
  notSelected,
}
