// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:dialysis/data_base/data_base.dart';
import 'package:dialysis/feature/welcome/view/welcome_p.dart';
import 'package:dialysis/navigation/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({
    required AppRouter router,
    required AppDb db,
  })  : _db = db,
        _go = router,
        super(SplashState.init());

  final AppRouter _go;
  final AppDb _db;

  Future<void> load() async {
    emit(state.copyWith(isLoad: true));
    await _db.load();
    // copy DB
    await _db.checkAndCopyDbFromAssets();

    // load and update data
    await _db.checkAndLoadUpdateDb();



    _go.router.goNamed(WelcomePage.name);

    emit(state.copyWith(isLoad: false));

    
  }
}

@immutable
class SplashState {
  final bool isLoad;
  const SplashState({
    required this.isLoad,
  });

  SplashState copyWith({
    bool? isLoad,
  }) {
    return SplashState(
      isLoad: isLoad ?? this.isLoad,
    );
  }

  factory SplashState.init() => const SplashState(isLoad: true);

  @override
  String toString() => 'SplashState(isLoad: $isLoad)';

  @override
  bool operator ==(covariant SplashState other) {
    if (identical(this, other)) return true;

    return other.isLoad == isLoad;
  }

  @override
  int get hashCode => isLoad.hashCode;
}
