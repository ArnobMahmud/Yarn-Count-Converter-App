import 'package:count_conv_app/db/info-ind-ind.dart';
import 'package:count_conv_app/widget/segment.dart';
import 'package:flutter/material.dart';

class IndirectIndirectMethod extends StatefulWidget {
  const IndirectIndirectMethod({Key key}) : super(key: key);

  @override
  State<IndirectIndirectMethod> createState() => _IndirectIndirectMethodState();
}

class _IndirectIndirectMethodState extends State<IndirectIndirectMethod> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color(0xffdccdbc),
        title: Text(
          'Indirect to Direct count',
          style: TextStyle(
            fontSize: 24,
            color: Colors.blueGrey,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Color(0xffa58d7f),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
          crossAxisCount: 2,
          childAspectRatio: aspectRatio / .85,
        ),
        itemCount: conversionInfo.length,
        itemBuilder: (BuildContext context, int index) => SegmentChoice(
          conversionInfo: conversionInfo[index],
        ),
      ),
    );
  }
}
