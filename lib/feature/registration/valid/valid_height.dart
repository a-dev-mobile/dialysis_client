import 'package:formz/formz.dart';

///
class ValidHeight extends FormzInput<String?, ValidHeightError> {
  const ValidHeight.pure() : super.pure(null);
  const ValidHeight.dirty(super.value) : super.dirty();

  @override
  ValidHeightError? validator(String? value) {
    return value == null ? ValidHeightError.notSelected : null;
  }

  factory ValidHeight.fromMap(Map<String, dynamic> map) {
    final result = map['ValidHeightFormz'].toString();
    if (result.isEmpty) return const ValidHeight.pure();

    return ValidHeight.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidHeightFormz': value};
  }
}

extension ValidHeightExtension on ValidHeight {
  ValidHeightError get notSelected => ValidHeightError.notSelected;
}

enum ValidHeightError {
  notSelected,
}
