import 'package:auto_size_text/auto_size_text.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MethodCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function onTap;
  final String imgData;

  const MethodCard(
      {Key key, this.title, this.subTitle, this.onTap, this.imgData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          ClipShadow(
            clipper: RoundedDiagonalPathClipper(),
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 0.0),
                blurRadius: 15.0,
                spreadRadius: 5.0,
                color: Color(0xff9b8673),
              )
            ],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //height: height * .8,
                width: width * .55,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  color: Color(0xffdccdbc),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(
                      flex: 4,
                    ),
                    Center(
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontSize: 23,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AutoSizeText(
                      subTitle,
                      maxFontSize: 20,
                      minFontSize: 18,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.brown[600],
                        fontSize: 20,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              imgData,
              alignment: Alignment.center,
              height: 130,
              width: 130,
            ),
          ),
        ],
      ),
    );
  }
}
