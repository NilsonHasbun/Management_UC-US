import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBYsrZMk46siNKINzEwWuoTbXczYSGz-xs",
            authDomain: "personal-management-ysc94t.firebaseapp.com",
            projectId: "personal-management-ysc94t",
            storageBucket: "personal-management-ysc94t.appspot.com",
            messagingSenderId: "452016769161",
            appId: "1:452016769161:web:9a3122963686415a031e58"));
  } else {
    await Firebase.initializeApp();
  }
}
