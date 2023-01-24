import 'package:formz/formz.dart';

///
class ValidUrineOutput extends FormzInput<double?, ValidUrineOutputError> {
  const ValidUrineOutput.pure({this.externalError, double? value})
      : super.pure(value);
  
  const ValidUrineOutput.dirty({this.externalError, double? value})
      : super.dirty(value);
  
  final ValidUrineOutputError? externalError;
  
  
  @override
  ValidUrineOutputError? validator(double? value) {
    if (externalError != null) {
      return externalError;
    }

    if (value == null) return ValidUrineOutputError.isEmpty;
    if (value > 3000) return ValidUrineOutputError.isMax;
    if (value < 0) return ValidUrineOutputError.isMin;

    return null;
  }

  factory ValidUrineOutput.fromMap(Map<String, dynamic> map) {
    final result = map['ValidUrineOutput'] as double?;
    if (result == null) return const ValidUrineOutput.pure();

    return ValidUrineOutput.pure(value: result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidUrineOutput': value};
  }
}

extension ValidUrineOutputExtension on ValidUrineOutput {
  ValidUrineOutputError get isEmpty => ValidUrineOutputError.isEmpty;
  ValidUrineOutputError get isMax => ValidUrineOutputError.isMax;
  ValidUrineOutputError get isMin => ValidUrineOutputError.isMin;
  ValidUrineOutputError get isNoValid => ValidUrineOutputError.isNoValid;
}

enum ValidUrineOutputError {
  isEmpty,
  isMax,
  isMin,
  isNoValid,
}
