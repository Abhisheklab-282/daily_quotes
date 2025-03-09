
import 'package:daily_qoutes/screen/signup/signupscreen.dart';
import 'package:daily_qoutes/screen/splash/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void>main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBXxf7xJ2iPWL4y-XUnK9qxhv0ZV5l9HMM",
        appId: "1:1049538324006:android:08be5ff60b98473f1f68e7",
        messagingSenderId: "1049538324006",
        projectId: "daily-quotes-80a19"
    )

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen()
    );
  }
}


