import 'package:dialysis/feature/common/valid/valid.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/l10n/app_localizations.dart';

class ValidHypertension
    extends FormzInput<EnumHypertension, ValidHypertensionError> {
  const ValidHypertension.pure() : super.pure(EnumHypertension.none);
  const ValidHypertension.dirty([super.value = EnumHypertension.none])
      : super.dirty();

  @override
  ValidHypertensionError? validator(EnumHypertension value) {
    return value == EnumHypertension.none
        ? ValidHypertensionError.notSelected
        : null;
  }

  factory ValidHypertension.fromMap(Map<String, dynamic> map) {
    final result = EnumHypertension.fromValue(
      map['ValidHypertensionFormz'] as String?,
      fallback: EnumHypertension.none,
    );

    return result == EnumHypertension.none
        ? const ValidHypertension.pure()
        : ValidHypertension.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidHypertensionFormz': value.name};
  }

  @override
  String? errorText({required AppLocalizations l}) {
   return null;
  }
}

extension ValidHypertensionX on ValidHypertension {
  ValidHypertensionError get notSelected => ValidHypertensionError.notSelected;
}

enum ValidHypertensionError {
  notSelected,
}
