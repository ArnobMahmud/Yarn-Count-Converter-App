import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.blueGrey,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      elevation: 0.0,
      backgroundColor: Color(0xffdccdbc),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.blueGrey[400],
          fontWeight: FontWeight.w400,
          fontSize: 30,
        ),
      ),
    );
  }
}
