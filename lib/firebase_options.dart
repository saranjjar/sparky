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
    apiKey: 'AIzaSyBgWHDW9O_BVFOmcnMrR6GpG0PPg86MVeA',
    appId: '1:196438397966:web:309bfa3359f587b78e985f',
    messagingSenderId: '196438397966',
    projectId: 'sparky-160e7',
    authDomain: 'sparky-160e7.firebaseapp.com',
    storageBucket: 'sparky-160e7.appspot.com',
    measurementId: 'G-SCR0V0VTM3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwrB8a91elNTKh6gRkM5TFJn-USVtAddk',
    appId: '1:196438397966:android:7cf4582dda7eee1b8e985f',
    messagingSenderId: '196438397966',
    projectId: 'sparky-160e7',
    storageBucket: 'sparky-160e7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6ZyYYJYLQMRYo1eXMAU02Bfn_kulKqYs',
    appId: '1:196438397966:ios:84e1ea8a8583f9928e985f',
    messagingSenderId: '196438397966',
    projectId: 'sparky-160e7',
    storageBucket: 'sparky-160e7.appspot.com',
    iosClientId: '196438397966-82c0umd0mhs92232v1vbbsnkdvk4oo3m.apps.googleusercontent.com',
    iosBundleId: 'com.sparkyapp.sparky',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6ZyYYJYLQMRYo1eXMAU02Bfn_kulKqYs',
    appId: '1:196438397966:ios:84e1ea8a8583f9928e985f',
    messagingSenderId: '196438397966',
    projectId: 'sparky-160e7',
    storageBucket: 'sparky-160e7.appspot.com',
    iosClientId: '196438397966-82c0umd0mhs92232v1vbbsnkdvk4oo3m.apps.googleusercontent.com',
    iosBundleId: 'com.sparkyapp.sparky',
  );
}
