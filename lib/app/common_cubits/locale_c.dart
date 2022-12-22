import 'dart:io';

import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/feature/common/enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleCubit extends Cubit<LocaleEnum> {
  LocaleCubit() : super(LocaleEnum.fromValue(Platform.localeName.split('_').first));

  Future<void> load() async {
    final selectedLocale = await AppStorage.getLocale();

    if (selectedLocale.isNotEmpty) {
      setLocale(LocaleEnum.fromValue(selectedLocale));
    } else {
      setLocale(state);
    }
  }

  ///
  void setLocale(LocaleEnum locale) {
    emit(locale);
    AppStorage.setLocale(locale.name);
  }

  ///
  void changeLocale() {
    state == LocaleEnum.en ? setLocale(LocaleEnum.ru) : setLocale(LocaleEnum.en);
  }
}
