
 
  import 'package:dialysis/feature/common/enums/enums.dart';
import 'package:formz/formz.dart';



class GenderValid extends FormzInput<Gender, GenderValidationError> {
  const GenderValid.pure() : super.pure(Gender.none);
  const GenderValid.dirty([super.value = Gender.none]) : super.dirty();

  @override
  GenderValidationError? validator(Gender value) {
    return value == Gender.none ? GenderValidationError.notSelected : null;
  }
}

extension GenderValidationExtension on GenderValid {
  GenderValidationError get notSelected => GenderValidationError.notSelected;
  Gender get genderMale => Gender.male;
  Gender get genderFemale => Gender.female;
  Gender get genderNone => Gender.none;
}

enum GenderValidationError {
  notSelected,
}

  
  