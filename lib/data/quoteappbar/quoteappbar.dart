import 'package:flutter/material.dart';

class QuoteAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const QuoteAppBar({super.key, required this.title});

  @override
  Size get preferredSize => Size.fromHeight(180);

  @override
  Widget build(BuildContext context) {
    var title = this.title;

    return AppBar(
      backgroundColor: Color(0XFFEC9FE9),
      elevation: 8,
      shadowColor: Colors.black.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      title: Column(

        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),

        ],
      ),

      actions:
        [
          if (title != "Profile")
        IconButton(
          icon: Icon(Icons.search, color: Colors.black87),
          onPressed: () {
            // Search action
          },
        ),
        IconButton(
          icon: Icon(Icons.more_vert, color: Colors.black87),
          onPressed: () {
            // More options
          },
        ),

      ]

    );
  }
}
