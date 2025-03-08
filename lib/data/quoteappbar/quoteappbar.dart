import 'package:flutter/material.dart';

class QuoteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const QuoteAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(180);

  @override
  Widget build(BuildContext context) {
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
            'Daily Quotes',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),

        ],
      ),
      actions: [
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
      ],
    );
  }
}
