import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shadow_clip/shadow_clip.dart';

class MethodCard extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final VoidCallback? onTap;
  final String? imgData;

  const MethodCard({
    super.key,
    this.title,
    this.subTitle,
    required this.onTap,
    this.imgData,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          ClipShadow(
            clipper: RoundedDiagonalPathClipper(),
            boxShadow: const [
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
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  color: Color(0xffdccdbc),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Center(
                      child: Text(
                        title!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      subTitle!,
                      style: TextStyle(
                        color: Colors.brown[600],
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
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
              imgData!,
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
