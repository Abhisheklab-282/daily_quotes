  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage('assets/images/background.jpeg'),
           fit: BoxFit.cover
         )
       ), child: Center(
         child: Text(
          "Daily Quotes",
          style: TextStyle(
            fontSize: 46, // Large text size
            fontWeight: FontWeight.bold, // Bold text
            fontFamily: 'Pacifico', // Custom font (Make sure to add it in pubspec.yaml)
            foreground: Paint()..shader = LinearGradient( // Gradient Text
              colors: [Colors.blueAccent, Colors.yellowAccent],
            ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
            shadows: [
              Shadow(
                blurRadius: 10.0, // Text shadow
                color: Colors.black38,
                offset: Offset(10, 5),
              ),
            ],
          ),
               ),
       )

      ),

    );

  }
}
