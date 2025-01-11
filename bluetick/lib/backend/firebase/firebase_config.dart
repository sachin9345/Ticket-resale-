import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCWnd5o96eQPnRsW10GNLVYT0ELp3EMQzU",
            authDomain: "ticket-resale-app.firebaseapp.com",
            projectId: "ticket-resale-app",
            storageBucket: "ticket-resale-app.appspot.com",
            messagingSenderId: "121592321640",
            appId: "1:121592321640:web:10c6db13ecdab544be0ddd",
            measurementId: "G-CYFNFGF5B2"));
  } else {
    await Firebase.initializeApp();
  }
}
