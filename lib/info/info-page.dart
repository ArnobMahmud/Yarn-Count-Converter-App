import 'package:count_conv_app/db/count-info.dart';
import 'package:count_conv_app/widget/info-card.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd1b399),
      appBar: AppBar(
        backgroundColor: Color(0xffd1b399),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff605467),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Transform(
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Text(
            'Yarn Count Measurement',
            style: TextStyle(
              color: Color(0xff4d4860),
              fontSize: 26,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: countInfo.length,
        itemBuilder: (BuildContext context, int index) => InfoCard(
          countInfo: countInfo[index],
        ),
      ),
    );
  }
}
