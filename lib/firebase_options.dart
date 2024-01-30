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
    apiKey: 'AIzaSyCKsb-j-_P7x8jXwf-z6se7ezFj4JWuKco',
    appId: '1:1015162354701:web:c14f339be82d30fa0e2944',
    messagingSenderId: '1015162354701',
    projectId: 'evazproject',
    authDomain: 'evazproject.firebaseapp.com',
    storageBucket: 'evazproject.appspot.com',
    measurementId: 'G-363LSG78V3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANm3PMAlMTRs6K59oNp_mO1J6iZdBwgGk',
    appId: '1:1015162354701:android:3a02afb9ef4a05cd0e2944',
    messagingSenderId: '1015162354701',
    projectId: 'evazproject',
    storageBucket: 'evazproject.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEO6oZQTwCiTiAnri7gaL0_0lcvUzc63k',
    appId: '1:1015162354701:ios:9f1743105dd0d6f50e2944',
    messagingSenderId: '1015162354701',
    projectId: 'evazproject',
    storageBucket: 'evazproject.appspot.com',
    iosBundleId: 'com.example.evaz',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEO6oZQTwCiTiAnri7gaL0_0lcvUzc63k',
    appId: '1:1015162354701:ios:d3c1631cd0b5774d0e2944',
    messagingSenderId: '1015162354701',
    projectId: 'evazproject',
    storageBucket: 'evazproject.appspot.com',
    iosBundleId: 'com.example.evaz.RunnerTests',
  );
}