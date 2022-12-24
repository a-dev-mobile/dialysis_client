// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:bloc/bloc.dart';

import 'package:dialysis/global_const.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_config_cubit.freezed.dart';

// https://console.firebase.google.com/u/2/project/product-13769/config

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  RemoteConfigCubit() : super(const RemoteConfigState());

  static const _devAndroidMinVersionKey = 'dev_android_min_version';
  static const _prodAndroidMinVersionKey = 'prod_android_min_version';

  Future<void> load() async {
    emit(state.copyWith(isLoad: true));

    //Get Latest version info from firebase config
    final remoteConfig = FirebaseRemoteConfig.instance;
    var versionAppKey = _prodAndroidMinVersionKey;

    try {
      //
      if (IS_DEBUG) {
        await remoteConfig.setConfigSettings(
          RemoteConfigSettings(
            fetchTimeout: Duration.zero,
            minimumFetchInterval: Duration.zero,
          ),
        );
        versionAppKey = _devAndroidMinVersionKey;
      }
      final _ = await remoteConfig.fetchAndActivate();

      final newVersionApp =
          _parseVersion(remoteConfig.getString(versionAppKey));

      // await AppStorage.setDbVersion(newVersionDb);

      final currentVersion = await _getCurrentVersion();
      emit(
        state.copyWith(
          isLoad: false,
          isNeedUpdate: newVersionApp > currentVersion,
        ),
      );
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    } finally {
      emit(
        state.copyWith(
          isLoad: false,
          isNeedUpdate: false,
        ),
      );
    }
  }

  Future<int> _getCurrentVersion() async {
    final info = await PackageInfo.fromPlatform();

    return _parseVersion(info.version);
  }

  int _parseVersion(String version) {
    // ignore: parameter_assignments
    version = version
        .trim()
        .replaceAll('.', '')
        .replaceAll(' ', '')
        .replaceAll(',', '')
        .replaceAll('_', '')
        .replaceAll('|', '');

    return int.tryParse(version) ?? 0;
  }
}

/// RemoteConfigState data class
@freezed
class RemoteConfigState with _$RemoteConfigState {
  const factory RemoteConfigState({
    @Default(true) bool isLoad,
    @Default(false) bool isNeedUpdate,
  }) = _RemoteConfigState;
}
