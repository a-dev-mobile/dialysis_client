import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/l10n/app_localizations.dart';

class ValidCkd extends FormzInput<EnumCkd, ValidCkdError> {
  const ValidCkd.pure() : super.pure(EnumCkd.none);
  const ValidCkd.dirty([super.value = EnumCkd.none]) : super.dirty();

  @override
  ValidCkdError? validator(EnumCkd value) {
    return value == EnumCkd.none ? ValidCkdError.notSelected : null;
  }

  @override
  String? errorText({ required AppLocalizations l}) =>
      isPure
          ? null
          : error == notSelected
              ? l.no_stage_skd_selected
              : null;

  factory ValidCkd.fromMap(Map<String, dynamic> map) {
    final result = EnumCkd.fromValue(
      map['ValidCkdFormz'] as String?,
      fallback: EnumCkd.none,
    );

    return result == EnumCkd.none
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
