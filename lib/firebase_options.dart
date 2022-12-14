// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      // ignore: no_default_cases
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAG6qGzS6rferbYXBiMp0cfi4qNpVWaut0',
    appId: '1:233829405021:web:a3224f494d7b45ad7d58b4',
    messagingSenderId: '233829405021',
    projectId: 'prod--dialysis',
    authDomain: 'prod--dialysis.firebaseapp.com',
    storageBucket: 'prod--dialysis.appspot.com',
    measurementId: 'G-FKM7JF2EVY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEdy1IcuZPsMZ08b2BI2diarA0kJ-urDw',
    appId: '1:233829405021:android:a6e4978edc5ba5d67d58b4',
    messagingSenderId: '233829405021',
    projectId: 'prod--dialysis',
    storageBucket: 'prod--dialysis.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1xuPhMgKTMzA60clTNk-4S4k-Fr6eyow',
    appId: '1:233829405021:ios:d38e6d698ead0ada7d58b4',
    messagingSenderId: '233829405021',
    projectId: 'prod--dialysis',
    storageBucket: 'prod--dialysis.appspot.com',
    iosClientId: '233829405021-6goplg67oca1blqissef5kt1lmpj9g95.apps.googleusercontent.com',
    iosBundleId: 'a.dev.mobile.dialysis',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1xuPhMgKTMzA60clTNk-4S4k-Fr6eyow',
    appId: '1:233829405021:ios:d38e6d698ead0ada7d58b4',
    messagingSenderId: '233829405021',
    projectId: 'prod--dialysis',
    storageBucket: 'prod--dialysis.appspot.com',
    iosClientId: '233829405021-6goplg67oca1blqissef5kt1lmpj9g95.apps.googleusercontent.com',
    iosBundleId: 'a.dev.mobile.dialysis',
  );
}
