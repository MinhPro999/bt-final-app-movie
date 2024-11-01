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
    apiKey: 'AIzaSyD-2kw-Xd-7yQDWo-UKaFoR4gV7kCD5Qqc',
    appId: '1:748160812086:web:65ea479062eb97c87f0497',
    messagingSenderId: '748160812086',
    projectId: 'fir-flutter-tutorial-74531',
    authDomain: 'fir-flutter-tutorial-74531.firebaseapp.com',
    storageBucket: 'fir-flutter-tutorial-74531.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBQ4wshl30ID4fdEUqo6mb6IQ7DV8IApM',
    appId: '1:748160812086:android:16f090dc9e3396c47f0497',
    messagingSenderId: '748160812086',
    projectId: 'fir-flutter-tutorial-74531',
    storageBucket: 'fir-flutter-tutorial-74531.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBznlw-k6kjrVBfO0I2P7VqXP91UWcN7I',
    appId: '1:748160812086:ios:6cd10539f331b37f7f0497',
    messagingSenderId: '748160812086',
    projectId: 'fir-flutter-tutorial-74531',
    storageBucket: 'fir-flutter-tutorial-74531.appspot.com',
    iosBundleId: 'com.example.flutterLearning',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCBznlw-k6kjrVBfO0I2P7VqXP91UWcN7I',
    appId: '1:748160812086:ios:6cd10539f331b37f7f0497',
    messagingSenderId: '748160812086',
    projectId: 'fir-flutter-tutorial-74531',
    storageBucket: 'fir-flutter-tutorial-74531.appspot.com',
    iosBundleId: 'com.example.flutterLearning',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD-2kw-Xd-7yQDWo-UKaFoR4gV7kCD5Qqc',
    appId: '1:748160812086:web:06aacf8bbaa22c2f7f0497',
    messagingSenderId: '748160812086',
    projectId: 'fir-flutter-tutorial-74531',
    authDomain: 'fir-flutter-tutorial-74531.firebaseapp.com',
    storageBucket: 'fir-flutter-tutorial-74531.appspot.com',
  );
}
