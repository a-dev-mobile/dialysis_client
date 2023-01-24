import 'package:dialysis/core/utils/utils.dart';
import 'package:formz/formz.dart';

/// Examples of accepted strings:
///
/// * `"2012-02-27"`
/// * `"2012-02-27 13:27:00"`
/// * `"2012-02-27 13:27:00.123456789z"`
/// * `"2012-02-27 13:27:00,123456789z"`
/// * `"20120227 13:27:00"`
/// * `"20120227T132700"`
/// * `"20120227"`
/// * `"+20120227"`
/// * `"2012-02-27T14Z"`
/// * `"2012-02-27T14+00:00"`
/// * `"-123450101 00:00:00 Z"`: in the year -12345.
/// * `"2002-02-27T14:00:00-0500"`: Same as `"2002-02-27T19:00:00Z"`
///
class ValidBirthday extends FormzInput<String, ValidBrithdayError> {
  const ValidBirthday.pure() : super.pure('');
  const ValidBirthday.dirty(super.value) : super.dirty();

  @override
  ValidBrithdayError? validator(String value) {
    return value.isEmpty
        ? ValidBrithdayError.isEmpty
        : value.isDate()
            ? null
            : ValidBrithdayError.isNoValid;
  }

  factory ValidBirthday.fromMap(Map<String, dynamic> map) {
    final result = map['ValidBirthdayFormz'].toString();
    if (result.isEmpty) return const ValidBirthday.pure();

    return ValidBirthday.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidBirthdayFormz': value};
  }
}

extension ValidBrithdayExtension on ValidBirthday {
  ValidBrithdayError get isNoValid => ValidBrithdayError.isNoValid;
  ValidBrithdayError get isEmpty => ValidBrithdayError.isEmpty;
}

enum ValidBrithdayError { isNoValid, isEmpty }
