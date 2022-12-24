import 'package:dialysis/core/storage/app_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit({required AppStorage storage})
      : _storage = storage,
        super(OnboardingState());
  final AppStorage _storage;
  void complectOnboarding() {
    _storage
      ..completeOnboarding()
      ..completeFirstStart();
  }
}

class OnboardingState {}
