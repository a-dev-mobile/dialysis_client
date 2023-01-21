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



factory ValidWeightFormz.fromMap(Map<String, dynamic> map) {
    final result = map['ValidWeightFormz'] as double?;
    if (result == null) return const ValidWeightFormz.pure();

    return ValidWeightFormz.pure(value: result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidWeightFormz': value};
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
