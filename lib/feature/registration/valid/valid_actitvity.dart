import 'package:dialysis/feature/common/valid/valid.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/l10n/app_localizations.dart';

class ValidActivity extends FormzInput<EnumActivity, ValidActivityError> {
  const ValidActivity.pure() : super.pure(EnumActivity.none);
  const ValidActivity.dirty([super.value = EnumActivity.none]) : super.dirty();

  @override
  ValidActivityError? validator(EnumActivity value) {
    return value == EnumActivity.none ? ValidActivityError.notSelected : null;
  }

  factory ValidActivity.fromMap(Map<String, dynamic> map) {
    final result = EnumActivity.fromValue(
      map['ValidActivityFormz'] as String?,
      fallback: EnumActivity.none,
    );

    return result == EnumActivity.none
        ? const ValidActivity.pure()
        : ValidActivity.dirty(result);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ValidActivityFormz': value.name,
    };
  }

  @override
  String? errorText({required AppLocalizations l}) {
    return isPure
        ? null
        : error == notSelected
            ? l.activity_not_selected
            : null;
  }
}

extension ValidActivityX on ValidActivity {
  ValidActivityError get notSelected => ValidActivityError.notSelected;

  EnumActivity get activityLight => EnumActivity.light;
  EnumActivity get activityNormal => EnumActivity.normal;
  EnumActivity get activityNone => EnumActivity.none;
}

enum ValidActivityError {
  notSelected,
}
