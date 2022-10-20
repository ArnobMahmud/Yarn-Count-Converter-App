import 'package:flutter/material.dart';

class CustomCountContainer extends StatelessWidget {
  final String data;
  final Color colour;
  const CustomCountContainer({Key key, this.data, this.colour})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Container(
        color: colour,
        child: Center(
          child: Text(
            data,
            style: TextStyle(
              fontSize: 40,
              color: Colors.lime[100],
            ),
          ),
        ),
      ),
    );
  }
}
