import 'package:auto_size_text/auto_size_text.dart';
import 'package:count_conv_app/models/conversion-info.dart';
import 'package:flutter/material.dart';

class SegmentChoice extends StatelessWidget {
  final ConversionInfo conversionInfo;

  const SegmentChoice({Key key, this.conversionInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, conversionInfo.nav);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: height * .5,
          width: width * .5,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 0.0),
                blurRadius: 10.0,
                spreadRadius: 8.0,
                color: Color(0xffb8b3ab),
              )
            ],
            color: Color(0xff373e02),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Image.asset(
                'images/yarn8.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                conversionInfo.title,
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xffbfefff),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              AutoSizeText(
                conversionInfo.subTitle,
                maxLines: 5,
                maxFontSize: 17,
                minFontSize: 16,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffe5e4e2),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
