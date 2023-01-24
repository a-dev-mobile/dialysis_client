import 'package:dialysis/feature/registration/registration.dart';
import 'package:formz/formz.dart';

class ValidActivity extends FormzInput<ActivityEnum, ValidActivityError> {
  const ValidActivity.pure() : super.pure(ActivityEnum.none);
  const ValidActivity.dirty([super.value = ActivityEnum.none]) : super.dirty();

  @override
  ValidActivityError? validator(ActivityEnum value) {
    return value == ActivityEnum.none ? ValidActivityError.notSelected : null;
  }

  factory ValidActivity.fromMap(Map<String, dynamic> map) {
    final result = ActivityEnum.fromValue(
      map['ValidActivityFormz'] as String?,
      fallback: ActivityEnum.none,
    );

    return result == ActivityEnum.none
        ? const ValidActivity.pure()
        : ValidActivity.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ValidActivityFormz': value.name,
    };
  }
}

extension ValidActivityX on ValidActivity {
  ValidActivityError get notSelected => ValidActivityError.notSelected;

  ActivityEnum get activityLight => ActivityEnum.light;
  ActivityEnum get activityNormal => ActivityEnum.normal;
  ActivityEnum get activityNone => ActivityEnum.none;
}

enum ValidActivityError {
  notSelected,
}
