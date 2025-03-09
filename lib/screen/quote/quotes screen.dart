
import 'package:daily_qoutes/screen/quote/bottamtapscreen/home%20screen.dart';
import 'package:daily_qoutes/screen/quote/bottamtapscreen/profile%20screen.dart';

import 'package:flutter/material.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screen = [
   HomeScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0XFFEC9FE9),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 15,
              offset: Offset(0, -5),
            ),
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.blueGrey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

}





// AppBar(
// title: Text(
// "Daily Quotes",
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// backgroundColor: Color(0XFFEC9FE9),
// elevation: 8,
// shadowColor: Colors.grey.withOpacity(0.3),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.vertical(
// bottom: Radius.circular(30),
// ),
// ),
// actions: [
// IconButton(
// icon: Icon(Icons.search, color: Colors.black87),
// onPressed: () {
// // Search action
// },
// ),
// IconButton(
// icon: Icon(Icons.more_vert, color: Colors.black87),
// onPressed: () {
// // More options
// },
// ),
// ],
// ),
