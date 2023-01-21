// ignore_for_file: avoid-nested-conditional-expressions

import 'package:formz/formz.dart';

class ValidNameFormz extends FormzInput<String, ValidNameError> {
  const ValidNameFormz.pure() : super.pure('');
  const ValidNameFormz.dirty([super.value = '']) : super.dirty();

  @override
  ValidNameError? validator(String value) {
    return value.isEmpty
        ? ValidNameError.isEmpty
        : RegExp(r'^.{30,100}$').hasMatch(value)
            ? ValidNameError.maxLenght
            : null;
  }

  factory ValidNameFormz.fromMap(Map<String, dynamic> map) {
    final result = (map['ValidNameFormz'] as String?) ?? '';
    if (result.isEmpty) return const ValidNameFormz.pure();

    return ValidNameFormz.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ValidNameFormz': value,
    };
  }
}

extension ValidNameExtension on ValidNameFormz {
  ValidNameError get isEmpty => ValidNameError.isEmpty;
  ValidNameError get maxLength => ValidNameError.maxLenght;
}

enum ValidNameError { isEmpty, maxLenght }
