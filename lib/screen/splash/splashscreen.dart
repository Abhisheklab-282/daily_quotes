import 'dart:async';


import 'package:daily_qoutes/screen/signup/signupscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage('assets/images/imgbaack.png'),
           fit: BoxFit.cover,

         )
       ), child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ClipRRect(
               borderRadius: BorderRadius.circular(20), // Rounded corner radius
               child: Image.asset(
                 'assets/images/qoutesimg.jpeg',
                 width: 200,
                 height: 200,
                 fit: BoxFit.cover,
               ),
             ),
             Text(
              "Daily Quotes",
              style: TextStyle(
                fontSize: 46, // Large text size
                fontWeight: FontWeight.bold, // Bold text
                fontFamily: 'Regular', // Custom font (Make sure to add it in pubspec.yaml)
                foreground: Paint()..shader = LinearGradient( // Gradient Text
                  colors: [Colors.yellowAccent, Colors.pinkAccent],
                ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                shadows: [
                  Shadow(
                    blurRadius: 8.0, // Text shadow
                    color: Colors.black38,
                    offset: Offset(3, 5),
                  ),
                ],
              ),
                   ),
           ],
         ),
       )

      ),

    );

  }
}
