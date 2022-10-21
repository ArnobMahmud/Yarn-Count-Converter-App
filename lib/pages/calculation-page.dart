import 'package:count_conv_app/models/conversion-info.dart';
import 'package:flutter/material.dart';

class CalculationPage extends StatefulWidget {
  final ConversionInfo conversionInfo;

  const CalculationPage({Key key, this.conversionInfo}) : super(key: key);

  @override
  _CalculationPageState createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: AppBar(
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
          widget.conversionInfo.title,
          style: TextStyle(
            color: Colors.blueGrey[400],
            fontWeight: FontWeight.w400,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
