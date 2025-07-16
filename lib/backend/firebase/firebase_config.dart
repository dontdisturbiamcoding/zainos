import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBB3X7V1vnbSpyDqef1OaUQt69dJbhXKok",
            authDomain: "zainoscapitalapp.firebaseapp.com",
            projectId: "zainoscapitalapp",
            storageBucket: "zainoscapitalapp.firebasestorage.app",
            messagingSenderId: "599931024826",
            appId: "1:599931024826:web:3daae25e558fb452859983",
            measurementId: "G-659HM7G337"));
  } else {
    await Firebase.initializeApp();
  }
}
