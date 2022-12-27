import 'package:dialysis/feature/registration/validation/validation.dart';
import 'package:dialysis/l10n/l10n.dart';

String? errorValidName(
  NameValid validation,
  AppLocalizations l10n,
) {
  return validation.pure
      ? null
      : validation.error == validation.isEmpty
          ? l10n.enter_name
          : validation.error == validation.maxLenght
              ? l10n.max_text_length
              : null;
}
