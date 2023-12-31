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
    apiKey: 'AIzaSyD9XUOf2mSEAzA89mVOOG3sObE7mUu3TkU',
    appId: '1:201688760625:web:5e303b853dd047381f3010',
    messagingSenderId: '201688760625',
    projectId: 'mindmemos-87cef',
    authDomain: 'mindmemos-87cef.firebaseapp.com',
    storageBucket: 'mindmemos-87cef.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCu4Yg7juQ7IZvIU7bcRR2a3ez8rSYXYVs',
    appId: '1:201688760625:android:6ee55d7b10cd84291f3010',
    messagingSenderId: '201688760625',
    projectId: 'mindmemos-87cef',
    storageBucket: 'mindmemos-87cef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCg9hG4pJQKRu3gmvuxVhpKdTxc06ij9wg',
    appId: '1:201688760625:ios:e6a9a15d76587a871f3010',
    messagingSenderId: '201688760625',
    projectId: 'mindmemos-87cef',
    storageBucket: 'mindmemos-87cef.appspot.com',
    iosClientId: '201688760625-nlfrs4l8pvtvtd16kbhrsstm3qvvlmgc.apps.googleusercontent.com',
    iosBundleId: 'com.example.tvh',
  );
}
