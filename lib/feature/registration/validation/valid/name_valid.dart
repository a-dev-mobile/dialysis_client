// ignore_for_file: avoid-nested-conditional-expressions

import 'package:formz/formz.dart';

class NameValid extends FormzInput<String, NameValidError> {
  const NameValid.pure() : super.pure('');
  const NameValid.dirty([super.value = '']) : super.dirty();

  @override
  NameValidError? validator(String value) {
    return value.isEmpty || value == ' '
        ? NameValidError.isEmpty
        : RegExp(r'^.{30,100}$').hasMatch(value)
            ? NameValidError.maxLenght
         
                : null;
  }
}

extension NameValidationExtension on NameValid {
  NameValidError get isEmpty => NameValidError.isEmpty;
  NameValidError get maxLenght => NameValidError.maxLenght;
}

enum NameValidError { isEmpty, maxLenght }
