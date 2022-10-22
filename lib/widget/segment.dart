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
          Navigator.pushNamed(
            context,
            conversionInfo.nav
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: height * .4,
          width: width * .5,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 0.0),
                blurRadius: 10.0,
                spreadRadius: 10.0,
                color: Color(0xffb29882),
              )
            ],
            color: Color(0xffe2dac6),
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
              Spacer(
                flex: 1,
              ),
              Text(
                conversionInfo.title,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                conversionInfo.subTitle,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
