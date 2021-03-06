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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYMd5ShN5pcuEe6re2ZcO83h3KEtI3VhY',
    appId: '1:213704139255:android:6564258a7134e79c4fcef2',
    messagingSenderId: '213704139255',
    projectId: 'grocery-market-5f7bb',
    storageBucket: 'grocery-market-5f7bb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAEGzVM-4I1sI-FSVcgv-siQlBET0SYKso',
    appId: '1:213704139255:ios:d736756858f941494fcef2',
    messagingSenderId: '213704139255',
    projectId: 'grocery-market-5f7bb',
    storageBucket: 'grocery-market-5f7bb.appspot.com',
    androidClientId: '213704139255-9j792o9injp3ccgnrsou83dhp3hmmu8g.apps.googleusercontent.com',
    iosClientId: '213704139255-19r3ngu3337b6vh2qam3pios5e9rlktc.apps.googleusercontent.com',
    iosBundleId: 'com.biley.groceryMarket',
  );
}
