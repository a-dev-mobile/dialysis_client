import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dialysis/core/storage/app_storage.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(
    
  ) : super(OnboardingState());

  void complectOnboarding() {
    AppStorage.completeOnboarding();
    AppStorage.completeFirstStart();
  }
}

class OnboardingState {}
