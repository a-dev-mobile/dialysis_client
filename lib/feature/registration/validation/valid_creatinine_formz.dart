import 'package:formz/formz.dart';

///
class ValidCreatinineFormz extends FormzInput<double?, ValidCreatinineError> {
  const ValidCreatinineFormz.pure({this.externalError, double? value})
      : super.pure(value);
  const ValidCreatinineFormz.dirty({this.externalError, double? value})
      : super.dirty(value);
  final ValidCreatinineError? externalError;
  @override
  ValidCreatinineError? validator(double? value) {
    if (externalError != null) {
      return externalError;
    }

    if (value == null) return ValidCreatinineError.isEmpty;
    if (value > 3000) return ValidCreatinineError.isMax;
    if (value < 0) return ValidCreatinineError.isMin;

    return null;
  }



factory ValidCreatinineFormz.fromMap(Map<String, dynamic> map) {
    final result = map['ValidCreatinineFormz'] as double?;
    if (result == null) return const ValidCreatinineFormz.pure();

    return ValidCreatinineFormz.pure(value: result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidCreatinineFormz': value};
  }


}

extension ValidCreatinineExtension on ValidCreatinineFormz {
  ValidCreatinineError get isEmpty => ValidCreatinineError.isEmpty;
  ValidCreatinineError get isMax => ValidCreatinineError.isMax;
  ValidCreatinineError get isMin => ValidCreatinineError.isMin;
  ValidCreatinineError get isNoValid => ValidCreatinineError.isNoValid;
}

enum ValidCreatinineError {
  isEmpty,
  isMax,
  isMin,
  isNoValid,
}
