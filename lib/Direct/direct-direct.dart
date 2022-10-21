import 'package:count_conv_app/db/info-dir-dir.dart';
import 'package:count_conv_app/widget/segment.dart';
import 'package:flutter/material.dart';

class DirectDirectMethod extends StatefulWidget {
  const DirectDirectMethod({Key key}) : super(key: key);

  @override
  State<DirectDirectMethod> createState() => _DirectDirectMethodState();
}

class _DirectDirectMethodState extends State<DirectDirectMethod> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      backgroundColor: Color(0xffd1b399),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffd1b399),
        title: Text(
          'Direct to Direct count',
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
