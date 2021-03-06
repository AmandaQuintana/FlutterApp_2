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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBaoL3scSu2HpooA92EBdZp9yICeZYnjIc',
    appId: '1:305167993236:web:4d2fb98132c177feade781',
    messagingSenderId: '305167993236',
    projectId: 'flutterapp-3b2dd',
    authDomain: 'flutterapp-3b2dd.firebaseapp.com',
    databaseURL: 'https://flutterapp-3b2dd-default-rtdb.firebaseio.com',
    storageBucket: 'flutterapp-3b2dd.appspot.com',
    measurementId: 'G-RH87WV1GKC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNYrO3Ga1w5j0wXdsw6KvZjsCAiXiN_Kw',
    appId: '1:305167993236:android:6182d69a115cbe31ade781',
    messagingSenderId: '305167993236',
    projectId: 'flutterapp-3b2dd',
    databaseURL: 'https://flutterapp-3b2dd-default-rtdb.firebaseio.com',
    storageBucket: 'flutterapp-3b2dd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMAfQK6DVaZKcc5WnUmT3Ws-XeTVL2Tps',
    appId: '1:305167993236:ios:a98f7ba08c222434ade781',
    messagingSenderId: '305167993236',
    projectId: 'flutterapp-3b2dd',
    databaseURL: 'https://flutterapp-3b2dd-default-rtdb.firebaseio.com',
    storageBucket: 'flutterapp-3b2dd.appspot.com',
    iosClientId: '305167993236-534esd9d0u2vpm5ethuqto2lc0jndai6.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBMAfQK6DVaZKcc5WnUmT3Ws-XeTVL2Tps',
    appId: '1:305167993236:ios:a98f7ba08c222434ade781',
    messagingSenderId: '305167993236',
    projectId: 'flutterapp-3b2dd',
    databaseURL: 'https://flutterapp-3b2dd-default-rtdb.firebaseio.com',
    storageBucket: 'flutterapp-3b2dd.appspot.com',
    iosClientId: '305167993236-534esd9d0u2vpm5ethuqto2lc0jndai6.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );
}
