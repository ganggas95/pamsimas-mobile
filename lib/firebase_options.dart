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
    apiKey: 'AIzaSyCXzMeJvUZRUdTO9wmaZZn51vbsz4zMiuY',
    appId: '1:395765007699:web:14ad05ffa98f7c0bdf4da6',
    messagingSenderId: '395765007699',
    projectId: 'akses-pamsimas',
    authDomain: 'akses-pamsimas.firebaseapp.com',
    storageBucket: 'akses-pamsimas.appspot.com',
    measurementId: 'G-DRGNHPW9ZP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDROduSctjfIzf0NGiELpQzlzw4d4MRt3o',
    appId: '1:395765007699:android:3efb964ce9a4d33adf4da6',
    messagingSenderId: '395765007699',
    projectId: 'akses-pamsimas',
    storageBucket: 'akses-pamsimas.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfuAqlJNycHcAhhloNuQZwAhIpdbKd_iM',
    appId: '1:395765007699:ios:4f6c023315fb07dbdf4da6',
    messagingSenderId: '395765007699',
    projectId: 'akses-pamsimas',
    storageBucket: 'akses-pamsimas.appspot.com',
    iosClientId: '395765007699-1q47eg617o22s85fjfju2kb1sfg5t4s1.apps.googleusercontent.com',
    iosBundleId: 'com.pamsimas.pamsimas',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfuAqlJNycHcAhhloNuQZwAhIpdbKd_iM',
    appId: '1:395765007699:ios:4f6c023315fb07dbdf4da6',
    messagingSenderId: '395765007699',
    projectId: 'akses-pamsimas',
    storageBucket: 'akses-pamsimas.appspot.com',
    iosClientId: '395765007699-1q47eg617o22s85fjfju2kb1sfg5t4s1.apps.googleusercontent.com',
    iosBundleId: 'com.pamsimas.pamsimas',
  );
}
