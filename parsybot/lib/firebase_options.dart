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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAwinXkyXUyC0Yo3UbwMKquJ8WKySyMJ-A',
    appId: '1:24395926635:web:63a0fed3298b9affed352e',
    messagingSenderId: '24395926635',
    projectId: 'parsybot-b07bf',
    authDomain: 'parsybot-b07bf.firebaseapp.com',
    storageBucket: 'parsybot-b07bf.appspot.com',
    measurementId: 'G-MF5908TNJN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWZ6tfLga5-46qPf_aYKLIue7UT9I0N-o',
    appId: '1:24395926635:android:aabc7f3b820c0ffeed352e',
    messagingSenderId: '24395926635',
    projectId: 'parsybot-b07bf',
    storageBucket: 'parsybot-b07bf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsqUn4-Bhrq7Cy-Yhq3-1ORwR2UHyqWF0',
    appId: '1:24395926635:ios:3a56767fb071b5cced352e',
    messagingSenderId: '24395926635',
    projectId: 'parsybot-b07bf',
    storageBucket: 'parsybot-b07bf.appspot.com',
    iosClientId: '24395926635-pohpcg5000mj3g11qjkkunph0fraaeq3.apps.googleusercontent.com',
    iosBundleId: 'com.example.pointersParsyBot',
  );
}
