// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class DebugCubit extends Cubit<DebugState> {
  DebugCubit()
      : super(
          const DebugState(
            isShowDevice: false,
            isShowBtnHttpLog: false,
            isShowRepaintRainbow: false,
            isShowPaintSizeEnabled: false,
          ),
        );

  void setDevicePreview({required bool isShow}) {
    emit(state.copyWith(isShowDevice: isShow));
  }

  void setShowBtnHttpLog({required bool isShow}) {
    emit(state.copyWith(isShowBtnHttpLog: isShow));
  }

  void setShowDebugRepaintRainbow({required bool isShow}) {
    emit(state.copyWith(isShowRepaintRainbow: isShow));
  }

  void setShowPaintSizeEnabled({required bool isShow}) {
    emit(state.copyWith(isShowPaintSizeEnabled: isShow));
  }
}

@immutable
class DebugState {
  final bool isShowDevice;
  final bool isShowBtnHttpLog;
  final bool isShowRepaintRainbow;
  final bool isShowPaintSizeEnabled;
  const DebugState({
    required this.isShowDevice,
    required this.isShowBtnHttpLog,
    required this.isShowRepaintRainbow,
    required this.isShowPaintSizeEnabled,
  });

  DebugState copyWith({
    bool? isShowDevice,
    bool? isShowBtnHttpLog,
    bool? isShowRepaintRainbow,
    bool? isShowPaintSizeEnabled,
  }) {
    return DebugState(
      isShowDevice: isShowDevice ?? this.isShowDevice,
      isShowBtnHttpLog: isShowBtnHttpLog ?? this.isShowBtnHttpLog,
      isShowRepaintRainbow: isShowRepaintRainbow ?? this.isShowRepaintRainbow,
      isShowPaintSizeEnabled:
          isShowPaintSizeEnabled ?? this.isShowPaintSizeEnabled,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isShowDevice': isShowDevice,
      'isShowBtnHttpLog': isShowBtnHttpLog,
      'isShowRepaintRainbow': isShowRepaintRainbow,
      'isShowPaintSizeEnabled': isShowPaintSizeEnabled,
    };
  }

  factory DebugState.fromMap(Map<String, dynamic> map) {
    return DebugState(
      isShowDevice: (map['isShowDevice'] ?? false) as bool,
      isShowBtnHttpLog: (map['isShowBtnHttpLog'] ?? false) as bool,
      isShowRepaintRainbow: (map['isShowRepaintRainbow'] ?? false) as bool,
      isShowPaintSizeEnabled: (map['isShowPaintSizeEnabled'] ?? false) as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory DebugState.fromJson(String source) =>
      DebugState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DebugState(isShowDevice: $isShowDevice, isShowBtnHttpLog: $isShowBtnHttpLog, isShowRepaintRainbow: $isShowRepaintRainbow, isShowPaintSizeEnabled: $isShowPaintSizeEnabled)';
  }

  @override
  bool operator ==(covariant DebugState other) {
    if (identical(this, other)) return true;

    return other.isShowDevice == isShowDevice &&
        other.isShowBtnHttpLog == isShowBtnHttpLog &&
        other.isShowRepaintRainbow == isShowRepaintRainbow &&
        other.isShowPaintSizeEnabled == isShowPaintSizeEnabled;
  }

  @override
  int get hashCode {
    return isShowDevice.hashCode ^
        isShowBtnHttpLog.hashCode ^
        isShowRepaintRainbow.hashCode ^
        isShowPaintSizeEnabled.hashCode;
  }
}
