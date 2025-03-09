import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../../widgets/ui/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String email;

  const ProfileScreen({
    super.key,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 1000,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/imgbaack.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  UiHelper.customTextField(
                      text: "MY Profile",
                      height: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFFFFFFF)),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          Stack(children: [
            // Padding(
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 130),
              child: CircleAvatar(radius: 50),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: InkWell(
                onTap: () {
                  // Yahan par  apna camera open karne ka code likhna hain

                  print('Camera icon clicked');
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ]),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 150, bottom: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Name: $name",
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Email: $email",
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          )

          // Logout Button
          //     ElevatedButton(
          //       onPressed: () {
          //         // Navigator.pop(context);
          //       },
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: Colors.red,
          //         padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          //       ),
          //       child: const Text(
          //         "Logout",
          //         style: TextStyle(color: Colors.white, fontSize: 16),
          //       ),
          //     )
        ],
      ),
    );
  }
}
