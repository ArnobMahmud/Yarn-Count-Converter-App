import 'package:count_conv_app/widget/brain.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class NeToTexConvPage extends StatefulWidget {
  const NeToTexConvPage({Key key}) : super(key: key);

  @override
  _NeToTexConvPageState createState() => _NeToTexConvPageState();
}

class _NeToTexConvPageState extends State<NeToTexConvPage> {
  double ne = 0;
  double netotex(ne) {
    if (ne == 0) {
      return 0;
    }
    return 590.5 / ne;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    //final width = MediaQuery.of(context).size.width;
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
          'Ne - Tex',
          style: TextStyle(
            color: Colors.blueGrey[400],
            fontWeight: FontWeight.w400,
            fontSize: 30,
          ),
        ),
      ),
      body: BrainCard(
        hintText: 'Count in Ne :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => ne = 0,
            );
          } else {
            setState(
              () {
                ne = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in Tex - ',
        result: netotex(ne).toStringAsFixed(2),
      ),
    );
  }
}
