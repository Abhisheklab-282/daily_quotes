import 'package:daily_qoutes/widgets/ui/uihelper.dart';
import 'package:flutter/material.dart';

import '../../../data/quoteappbar/quoteappbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Column(
          children: [
            QuoteAppBar(title: "Profile"),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/dwn.png"),
                  backgroundColor: Colors.grey,
                ),
                Positioned(
                  bottom: 10,
                  right: 5,
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey.shade400,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_a_photo,
                            size: 20, color: Colors.black),
                      )),
                )
              ])
            ],
          ),
          SizedBox(height: 5),
          UiHelper.customTextField(
              text: "Gourav", height: 20, fontWeight: FontWeight.bold),
          SizedBox(height: 2),
          UiHelper.customTextField(
              text: "nagwangourav@gmail.com",
              height: 15,
              fontWeight: FontWeight.w400),
          SizedBox(height: 10),
          Divider(thickness: 2),
          Card(
            color: Colors.white,
            elevation: 10,
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 350,
              height: 340,
              child: Column(
                children: [
                  ListTile(
                    leading:
                        Icon(Icons.notifications, color: Colors.blueAccent),
                    title: Text("Notification"),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    title: Text("Favorite Quotes"),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(
                      Icons.bookmark,
                      color: Colors.black,
                    ),
                    title: Text("Saved Quotes"),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        color: Color(0XFFEC9FE9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
