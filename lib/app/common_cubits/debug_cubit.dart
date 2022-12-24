

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'debug_cubit.freezed.dart';

class DebugCubit extends Cubit<DebugState> {
  DebugCubit() : super(DebugState());

  void setDevicePreview(bool isShow) {
    emit(state.copyWith(isShowDevice: isShow));
  }

  void setShowBtnHttpLog(bool isShow) {
    emit(state.copyWith(isShowBtnHttpLog: isShow));
  }

  void setShowDebugRepaintRainbow(bool isShow) {
    emit(state.copyWith(isShowRepaintRainbow: isShow));
  }

  void setShowPaintSizeEnabled(bool isShow) {
    emit(state.copyWith(isShowPaintSizeEnabled: isShow));
  }
}

/// DebugState data class
@freezed
class DebugState with _$DebugState {
  const factory DebugState({
    @Default(false) bool isShowDevice,
    @Default(false) bool isShowBtnHttpLog,
    @Default(false) bool isShowRepaintRainbow,
    @Default(false) bool isShowPaintSizeEnabled,
  }) = _DebugState;
}
