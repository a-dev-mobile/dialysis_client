import 'package:dialysis/feature/common/valid/valid.dart';
import 'package:dialysis/l10n/app_localizations.dart';

///
class ValidCreatinine extends FormzInput<double?, ValidCreatinineError> {
  const ValidCreatinine.pure({this.externalError, double? value})
      : super.pure(value);

  const ValidCreatinine.dirty({this.externalError, double? value})
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

  factory ValidCreatinine.fromMap(Map<String, dynamic> map) {
    final result = map['ValidCreatinine'] as double?;
    if (result == null) return const ValidCreatinine.pure();

    return ValidCreatinine.pure(value: result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidCreatinine': value};
  }

  @override
  String? errorText({required AppLocalizations l}) {
    return null;
  }
}

extension ValidCreatinineExtension on ValidCreatinine {
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
