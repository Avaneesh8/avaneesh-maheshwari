import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDPu5AkwHCRhM7Wu5hiEDpiZxTOV2IXTiU",
            authDomain: "avaneesh-maheshwari.firebaseapp.com",
            projectId: "avaneesh-maheshwari",
            storageBucket: "avaneesh-maheshwari.appspot.com",
            messagingSenderId: "264409321359",
            appId: "1:264409321359:web:7b066d1dd93eb25ad145fa"));
  } else {
    await Firebase.initializeApp();
  }
}
