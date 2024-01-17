import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  const CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blueGrey,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      elevation: 0.0,
      backgroundColor: const Color(0xffdccdbc),
      title: Text(
        title!,
        style: TextStyle(
          color: Colors.blueGrey[400],
          fontWeight: FontWeight.w400,
          fontSize: 22,
        ),
      ),
    );
  }
}
