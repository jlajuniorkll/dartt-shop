// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAChKRX5QrzMyjg7DKMF9cZi5yXfJoThv0',
    appId: '1:804200370233:web:29f425e388b90a6c0b7de8',
    messagingSenderId: '804200370233',
    projectId: 'darttshop-bbe51',
    authDomain: 'darttshop-bbe51.firebaseapp.com',
    storageBucket: 'darttshop-bbe51.appspot.com',
    measurementId: 'G-N3Z7MY6JFQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDm9Cw50w_X1lotRzxBu5GdMIjUg9_bHTY',
    appId: '1:804200370233:android:e55418beca903f200b7de8',
    messagingSenderId: '804200370233',
    projectId: 'darttshop-bbe51',
    storageBucket: 'darttshop-bbe51.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxPDCdkAgLXAKZDMtk8CiNGBYB4PvA0zs',
    appId: '1:804200370233:ios:2f1c925d9cfeb7630b7de8',
    messagingSenderId: '804200370233',
    projectId: 'darttshop-bbe51',
    storageBucket: 'darttshop-bbe51.appspot.com',
    iosClientId: '804200370233-bkaqup54jbi8gbabv9v7el7q19ie6olu.apps.googleusercontent.com',
    iosBundleId: 'br.com.dartt',
  );
}
