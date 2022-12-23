import 'package:auto_size_text/auto_size_text.dart';
import 'package:count_conv_app/models/conversion-info.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final CountInfo countInfo;
  const InfoCard({Key key, this.countInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          color: Color(0xff4a2c2a),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 0.0),
              blurRadius: 5.0,
              spreadRadius: 3.0,
              color: Color(0xffb29882),
            )
          ],
        ),
        height: height * .45,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(
              countInfo.title,
              style: TextStyle(
                color: Color(0xffedd59e),
                fontSize: 24,
              ),
            ),
            Spacer(),
            AutoSizeText(
              countInfo.desc,
              maxLines: 12,
              maxFontSize: 16,
              minFontSize: 14,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xffe2c28e),
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
