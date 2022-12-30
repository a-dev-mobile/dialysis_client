import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidActivityFormz
    extends FormzInput<ActivityEnum, ValidActivityError> {
  const ValidActivityFormz.pure() : super.pure(ActivityEnum.none);
  const ValidActivityFormz.dirty([super.value = ActivityEnum.none]) : super.dirty();

  @override
  ValidActivityError? validator(ActivityEnum value) {
    return value == ActivityEnum.none
        ? ValidActivityError.notSelected
        : null;
  }
}

extension ValidActivityX on ValidActivityFormz {
  ValidActivityError get notSelected =>
      ValidActivityError.notSelected;


  ActivityEnum get activityLight => ActivityEnum.light;
  ActivityEnum get activityNormal => ActivityEnum.normal;
  ActivityEnum get activityNone => ActivityEnum.none;
}

enum ValidActivityError {
  notSelected,
}
