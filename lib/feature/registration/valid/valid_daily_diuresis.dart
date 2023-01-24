import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidDailyDiuresis extends FormzInput<DailyDiuresisEnum, DailyDiuresisError> {
  const ValidDailyDiuresis.pure() : super.pure(DailyDiuresisEnum.none);
  const ValidDailyDiuresis.dirty([super.value = DailyDiuresisEnum.none]) : super.dirty();

  @override
  DailyDiuresisError? validator(DailyDiuresisEnum value) {
    return value == DailyDiuresisEnum.none ? DailyDiuresisError.notSelected : null;
  }

  factory ValidDailyDiuresis.fromMap(Map<String, dynamic> map) {
    final result = DailyDiuresisEnum.fromValue(
      map['ValidDailyDiuresis'] as String?,
      fallback: DailyDiuresisEnum.none,
    );

    return result == DailyDiuresisEnum.none
        ? const ValidDailyDiuresis.pure()
        : ValidDailyDiuresis.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ValidDailyDiuresis': value.name};
  }
}

extension DailyDiuresisX on ValidDailyDiuresis {
  DailyDiuresisError get notSelected => DailyDiuresisError.notSelected;
}

enum DailyDiuresisError {
  notSelected,
}
