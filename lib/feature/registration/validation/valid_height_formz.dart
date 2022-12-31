import 'package:formz/formz.dart';

///
class ValidHeightFormz extends FormzInput<String?, ValidHeightError> {
  const ValidHeightFormz.pure() : super.pure(null);
  const ValidHeightFormz.dirty(super.value) : super.dirty();

  @override
  ValidHeightError? validator(String? value) {
    return value == null ? ValidHeightError.notSelected : null;
  }
}

extension ValidHeightExtension on ValidHeightFormz {
  ValidHeightError get notSelected => ValidHeightError.notSelected;
}

enum ValidHeightError {
  notSelected,
}
