// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloc/bloc.dart';
import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';


import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_cubit.freezed.dart';
part 'water_cubit.g.dart';

class WaterCubit extends Cubit<WaterState> {
  WaterCubit()
      : super(
          const WaterState(
            sumFullGlass: 0,
            sumRecomendGlass: 0,
            maxWater: 800,
            currentWater: 0,
            volumeGlass: 100,
            glassList: [],
          ),
        );

  void load() {
    emit(state.copyWith(isLoadPage: true));
    final maxWater = state.maxWater;
    final volumeGlass = state.volumeGlass;

    final sumRecomendGlass = maxWater ~/ volumeGlass;

    emit(
      state.copyWith(
        maxWater: maxWater,
        sumRecomendGlass: sumRecomendGlass,
        volumeGlass: volumeGlass,
      ),
    );
    emit(state.copyWith(isLoadPage: false));
  }

  void increment() {
    _resultCurrentWater(isIncrement: true);
  }

  void _resultCurrentWater({required bool isIncrement}) {
    final sumFullGlass =
        isIncrement ? state.sumFullGlass + 1 : state.sumFullGlass - 1;
    if (sumFullGlass < 0) return;
    final volumeGlass = state.volumeGlass;

    final glassList = <GlassState>[];

    for (var i = 0; i < sumFullGlass; i++) {
      glassList.add(GlassState(glassStatus: _getGlassStatus(i), idGlass: i));
    }

    emit(
      state.copyWith(
        glassList: glassList,
        sumFullGlass: sumFullGlass,
        currentWater: sumFullGlass * volumeGlass,
      ),
    );
  }

  GlassStatusEnum _getGlassStatus(int idGlass) {
    if (idGlass == state.sumRecomendGlass) return GlassStatusEnum.isGood;
    if (idGlass > state.sumRecomendGlass) return GlassStatusEnum.isBad;

    return GlassStatusEnum.isSimple;
  }

  void decrement() {
    _resultCurrentWater(isIncrement: false);
  }
}

/// WaterCubit data class
@freezed
class WaterState with _$WaterState {
  const factory WaterState({
    @Default(false) bool isLoadPage,
    @Default(false) bool isNextPage,
    required int sumFullGlass,
    required int sumRecomendGlass,
    required double maxWater,
    required double currentWater,
    required double volumeGlass,
    required List<GlassState> glassList,
  }) = _WaterState;

  /// Generate WaterCubit class from Map<String, Object?>
  factory WaterState.fromJson(Map<String, Object?> json) =>
      _$WaterStateFromJson(json);
}

@freezed
class GlassState with _$GlassState {
  const factory GlassState({
    required GlassStatusEnum glassStatus,
    required int idGlass,
  }) = _GlassState;

  /// Generate WaterCubit class from Map<String, Object?>
  factory GlassState.fromJson(Map<String, Object?> json) =>
      _$GlassStateFromJson(json);
}
