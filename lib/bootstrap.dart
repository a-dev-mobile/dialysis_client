// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:crypto/crypto.dart';
import 'package:dialysis/app_bloc_observer.dart';
import 'package:dialysis/core/device/device_info.dart';
import 'package:dialysis/core/log/log.dart';
import 'package:dialysis/core/network/network.dart';
import 'package:dialysis/data_base/data_base.dart';
import 'package:dialysis/firebase_options.dart';
import 'package:dialysis/global_const.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

// ignore: prefer-static-class
Future<void> bootstrap(FutureOr<Widget> Function() app) async {
  await runZonedGuarded(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        FlutterError.dumpErrorToConsole(details);
        log.e(details.exceptionAsString(), '🚑', details.stack);
      };

      Bloc.observer = AppBlocObserver();
      Bloc.transformer = bloc_concurrency.sequential<Object?>();
      PlatformDispatcher.instance.onError = _onPlatformDispatcherError;

      await _initStatusBar();

      final _ = await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      if (kDebugMode && !kIsWeb) {
        await FirebaseCrashlytics.instance
            .setCrashlyticsCollectionEnabled(false);
      } else if (!kIsWeb) {
        await FirebaseCrashlytics.instance
            .setCrashlyticsCollectionEnabled(true);
        // Passing all uncaught errors from the framework to Crashlytics
        FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
      }

      // App Info Output
      final userAgent = await DeviceInfo.getUserAgent();
      final packageName = await DeviceInfo.getPackageName();
      log.i(
        'IS_DEBUG = $IS_DEBUG | IS_PROD = $IS_PROD\n$packageName\n$userAgent',
      );

      // Bad Certificate for http analize
      if (IS_DEBUG) HttpOverrides.global = MyHttpOverrides();

      HydratedBloc.storage = await _hydratedStorageBuild();
      runApp(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (context) => AppRouter(),
            ),
            RepositoryProvider(
              create: (context) => AppDb(),
            ),
          ],
          child: await app(),
        ),
      );
    },
    (error, stackTrace) {
      if (IS_PROD) {
        FirebaseCrashlytics.instance.recordError(error, stackTrace);
      } else {
        logger.e('App Zone Stack Trace', error.toString(), stackTrace);
      }
    },
  );
  // copy DB
  await DataBaseHelper.checkAndcopyDbFromAssets();

  // load data
  await DataBaseHelper.checkAndLoadUpdateDb();

  FlutterNativeSplash.remove();
  log.v('** close NATIVE splash**');
}

// ignore: prefer-static-class
Future<void> _initStatusBar() async {
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}

HydratedAesCipher _encryptionCipher() {
  const password = APP_DB_PASSWORD;
  final byteskey = sha256.convert(utf8.encode(password)).bytes;

  return HydratedAesCipher(byteskey);
}

Future<Storage> _hydratedStorageBuild() async {
  return HydratedStorage.build(
    encryptionCipher: _encryptionCipher(),
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
}

bool _onPlatformDispatcherError(Object error, StackTrace stack) {
  logger.e('error: FlutterError', error, stack);

  return true;
}
