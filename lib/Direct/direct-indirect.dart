import 'package:count_conv_app/db/info-dir-ind.dart';
import 'package:count_conv_app/widget/segment.dart';
import 'package:flutter/material.dart';

class DirectIndirectMethod extends StatelessWidget {
  const DirectIndirectMethod({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    //final width = MediaQuery.of(context).size.width;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      backgroundColor: Color(0xffebced5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffebced5),
        title: Transform(
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Text(
            'Direct to Indirect',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xff5c4450),
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
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
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: aspectRatio / .9,
        ),
        itemCount: conversionInfo.length,
        itemBuilder: (BuildContext context, int index) => SegmentChoice(
          conversionInfo: conversionInfo[index],
        ),
      ),
    );
  }
}
