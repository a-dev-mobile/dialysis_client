import 'package:formz/formz.dart';

///
class ValidWeightFormz extends FormzInput<double?, ValidWeightError> {
  const ValidWeightFormz.pure({this.externalError, double? value})
      : super.pure(value);
  const ValidWeightFormz.dirty({this.externalError, double? value})
      : super.dirty(value);
  final ValidWeightError? externalError;
  @override
  ValidWeightError? validator(double? value) {
    if (externalError != null) {
      return externalError;
    }

    if (value == null) return ValidWeightError.isEmpty;
    if (value > 250) return ValidWeightError.isMax;
    if (value < 50) return ValidWeightError.isMin;

    return null;
  }
}

extension ValidWeightExtension on ValidWeightFormz {
  ValidWeightError get isEmpty => ValidWeightError.isEmpty;
  ValidWeightError get isMax => ValidWeightError.isMax;
  ValidWeightError get isMin => ValidWeightError.isMin;
  ValidWeightError get isNoValid => ValidWeightError.isNoValid;
}

enum ValidWeightError {
  isEmpty,
  isMax,
  isMin,
  isNoValid,
}
