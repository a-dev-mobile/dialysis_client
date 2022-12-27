

import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/l10n/l10n.dart';

String? errorGender(
  GenderValid validation,
  AppLocalizations l10n,
) {
  return validation.pure
      ? null
      : validation.error == validation.notSelected
          ? l10n.field_must_be_completed
          : null;
}
