import 'package:flutter/material.dart';

import '../../widgets/ui/uihelper.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/imgbaack.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("Profile Type",
                style: TextStyle(
                    fontFamily: "bold",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 20,
                      shadowColor: Colors.black,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            "assets/images/individual image.png",
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Individual",
                        style: TextStyle(
                            fontFamily: "bold",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87))
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 20,
                      shadowColor: Colors.black,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          width: 150,
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Image.asset(
                              "assets/images/businesses img.png",
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Business",
                        style: TextStyle(
                            fontFamily: "bold",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87)),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                BottomNavigationBarTheme(
                    data: BottomNavigationBarThemeData(
                        backgroundColor: Colors.transparent),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 42.65),
                      child: Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(40)),
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 15,
                                offset: Offset(0, -5),
                              )
                            ]),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                           customTextField( hintText: "Name")
                          ],
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey.shade200,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget customTextField({
    required String hintText,
  }) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0XFFEC9FE9)
      ),child: TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black87,
        ),
        border: InputBorder.none,
      )
    ),
    );
  }
}
