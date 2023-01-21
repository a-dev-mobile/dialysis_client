import 'package:formz/formz.dart';

///
class ValidHeightFormz extends FormzInput<String?, ValidHeightError> {
  const ValidHeightFormz.pure() : super.pure(null);
  const ValidHeightFormz.dirty(super.value) : super.dirty();

  @override
  ValidHeightError? validator(String? value) {
    return value == null ? ValidHeightError.notSelected : null;
  }

  factory ValidHeightFormz.fromMap(Map<String, dynamic> map) {
    final result = map['ValidHeightFormz'].toString();
    if (result.isEmpty) return const ValidHeightFormz.pure();

    return ValidHeightFormz.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidHeightFormz': value};
  }
}

extension ValidHeightExtension on ValidHeightFormz {
  ValidHeightError get notSelected => ValidHeightError.notSelected;
}

enum ValidHeightError {
  notSelected,
}
