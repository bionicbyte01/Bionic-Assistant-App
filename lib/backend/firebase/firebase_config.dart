import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBB4tUssWqGv7Thhmx7xGxgdV3PzaYr-4Y",
            authDomain: "sample-chat-app-8kwd7l.firebaseapp.com",
            projectId: "sample-chat-app-8kwd7l",
            storageBucket: "sample-chat-app-8kwd7l.appspot.com",
            messagingSenderId: "51153412552",
            appId: "1:51153412552:web:52698bcd405861778960fd"));
  } else {
    await Firebase.initializeApp();
  }
}
