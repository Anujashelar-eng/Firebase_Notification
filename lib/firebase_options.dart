import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return android;
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCH_PecCITt9fEGv6U-4PtTKiyfehyloG8',
    appId: '1:101427739027:android:6cd3632d1ddfedee831066',
    messagingSenderId: '101427739027',
    projectId: 'flutter-notifications-251b0',
    storageBucket: 'flutter-notifications-251b0.firebasestorage.app',
  );
}