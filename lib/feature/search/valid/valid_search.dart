// ignore_for_file: avoid-nested-conditional-expressions

import 'package:formz/formz.dart';

class ValidSearchFormz extends FormzInput<String, ValidSearchError> {
  const ValidSearchFormz.pure({this.externalError}) : super.pure('');
  const ValidSearchFormz.dirty({
    this.externalError,
    String value = '',
  }) : super.dirty(value);

  final ValidSearchError? externalError;
  @override
  ValidSearchError? validator(String value) {
    if (externalError != null) {
      return externalError;
    }

    return value.isEmpty
        ? ValidSearchError.isEmpty
        : value.length < 2
            ? ValidSearchError.leght1
            : value.length < 3
                ? ValidSearchError.leght2
                : null;
  }


  factory ValidSearchFormz.fromMap(Map<String, dynamic> map) {
    final result = (map['ValidSearchFormz'] as String?) ?? '';
    if (result.isEmpty) return const ValidSearchFormz.pure();

    return ValidSearchFormz.dirty(value: result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ValidSearchFormz': value,
    };
  }


}

extension ValidSearchExtension on ValidSearchFormz {
  ValidSearchError get leght1 => ValidSearchError.leght1;
  ValidSearchError get leght2 => ValidSearchError.leght2;
  ValidSearchError get isEmpty => ValidSearchError.isEmpty;
}

enum ValidSearchError { leght1, leght2, isEmpty }
