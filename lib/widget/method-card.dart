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
                color: Color(0xffa58d7a),
              )
            ],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * .5,
                width: width * .45,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  color: Color(0xffe7d5c9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 4,
                    ),
                    Center(
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blueGrey[400],
                          fontSize: 23,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        color: Colors.brown[400],
                        fontSize: 19,
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
