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
    apiKey: 'AIzaSyDwOh-YyhKIXXEWwg8KCycTygicfpMXVTI',
    appId: '1:39923885731:web:96921b15dfdcd1a171c116',
    messagingSenderId: '39923885731',
    projectId: 'ecommerce-7d6fc',
    authDomain: 'ecommerce-7d6fc.firebaseapp.com',
    storageBucket: 'ecommerce-7d6fc.appspot.com',
    measurementId: 'G-5PMG73GSBE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDb3PNq8sfwkuTf_-0N7PHFvu6YlwR4UpU',
    appId: '1:39923885731:android:a870ecfaf88be5b471c116',
    messagingSenderId: '39923885731',
    projectId: 'ecommerce-7d6fc',
    storageBucket: 'ecommerce-7d6fc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVe-05PRLJ1qagyvjDAeUsL9jpOjcO7Jw',
    appId: '1:39923885731:ios:4e9f5c00b0fd9c9071c116',
    messagingSenderId: '39923885731',
    projectId: 'ecommerce-7d6fc',
    storageBucket: 'ecommerce-7d6fc.appspot.com',
    androidClientId: '39923885731-1216bsf4it07r1uj473g5iq1epj9703s.apps.googleusercontent.com',
    iosClientId: '39923885731-478c46fu2v88m25f0g337qsfvmghsd8u.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerce.ecommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCVe-05PRLJ1qagyvjDAeUsL9jpOjcO7Jw',
    appId: '1:39923885731:ios:4e9f5c00b0fd9c9071c116',
    messagingSenderId: '39923885731',
    projectId: 'ecommerce-7d6fc',
    storageBucket: 'ecommerce-7d6fc.appspot.com',
    androidClientId: '39923885731-1216bsf4it07r1uj473g5iq1epj9703s.apps.googleusercontent.com',
    iosClientId: '39923885731-478c46fu2v88m25f0g337qsfvmghsd8u.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerce.ecommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDwOh-YyhKIXXEWwg8KCycTygicfpMXVTI',
    appId: '1:39923885731:web:a479f296f700993771c116',
    messagingSenderId: '39923885731',
    projectId: 'ecommerce-7d6fc',
    authDomain: 'ecommerce-7d6fc.firebaseapp.com',
    storageBucket: 'ecommerce-7d6fc.appspot.com',
    measurementId: 'G-RXPZ5TXR8R',
  );

}