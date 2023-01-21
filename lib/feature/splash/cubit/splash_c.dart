// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';

import 'package:dialysis/data_base/data_base.dart';
import 'package:dialysis/feature/welcome/view/welcome_page.dart';
import 'package:dialysis/navigation/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({
    required AppRouter router,
    required AppDb db,
  })  : _db = db,
        _go = router,
        super(const SplashState());

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
  /* init:false */
  final bool isLoad;
  // end
   
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************
  
  const SplashState({
    this.isLoad = false,
  });
  /*
   factory SplashState.init() => SplashState(
      ); 
  */
  
SplashState copyWith({
    bool? isLoad,
  }) {
    return SplashState(
      isLoad: isLoad ?? this.isLoad, 
    );
  }
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoad': isLoad, 
    };
  }
  
  factory SplashState.fromMap(Map<String, dynamic> map) {
    return SplashState(
      isLoad: map['isLoad'] as bool? ?? false, 
    );
  }
  @override
  String toString() {
    return 'SplashState(isLoad: $isLoad, )';
  }

  String toJson() => json.encode(toMap());
  
  factory SplashState.fromJson(String source) => SplashState.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashState &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad) );

  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoad,
]);
  }
