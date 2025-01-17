// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD0GQtdn4maaTDVyPGgpPq58mt2z9cOZU8',
    appId: '1:904819633316:web:2ce8d4570a33dc192c4a31',
    messagingSenderId: '904819633316',
    projectId: 'laziness-slayer',
    authDomain: 'laziness-slayer.firebaseapp.com',
    storageBucket: 'laziness-slayer.firebasestorage.app',
    measurementId: 'G-LGY7TS9HLJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMIryANtPROmBqeG_qCd7v0-FuKWFql4c',
    appId: '1:904819633316:android:0377f63825ebc4a22c4a31',
    messagingSenderId: '904819633316',
    projectId: 'laziness-slayer',
    storageBucket: 'laziness-slayer.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBwkiNYzAIOwsneeLt494sqa7lcHdwWP0s',
    appId: '1:904819633316:ios:7990907e5141307e2c4a31',
    messagingSenderId: '904819633316',
    projectId: 'laziness-slayer',
    storageBucket: 'laziness-slayer.firebasestorage.app',
    iosBundleId: 'com.example.lazinessSlayer',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBwkiNYzAIOwsneeLt494sqa7lcHdwWP0s',
    appId: '1:904819633316:ios:7990907e5141307e2c4a31',
    messagingSenderId: '904819633316',
    projectId: 'laziness-slayer',
    storageBucket: 'laziness-slayer.firebasestorage.app',
    iosBundleId: 'com.example.lazinessSlayer',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD0GQtdn4maaTDVyPGgpPq58mt2z9cOZU8',
    appId: '1:904819633316:web:38312889b0f9aead2c4a31',
    messagingSenderId: '904819633316',
    projectId: 'laziness-slayer',
    authDomain: 'laziness-slayer.firebaseapp.com',
    storageBucket: 'laziness-slayer.firebasestorage.app',
    measurementId: 'G-E71YY64YF7',
  );
}
