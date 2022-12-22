import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/feature/common/enum.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(Locale.fromValue(Platform.localeName.split('_').first));

  Future<void> load() async {
    final selectedLocale = await AppStorage.getLocale();

    if (selectedLocale.isNotEmpty) {
      setLocale(Locale.fromValue(selectedLocale));
    } else {
      setLocale(state);
    }
  }

  ///
  void setLocale(Locale locale) {
    emit(locale);
    AppStorage.setLocale(locale.name);
  }

  ///
  void changeLocale() {
    state == Locale.en ? setLocale(Locale.ru) : setLocale(Locale.en);
  }
}
