import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../models/conversion_info.dart';

class SegmentChoice extends StatelessWidget {
  final ConversionInfo conversionInfo;

  const SegmentChoice({super.key, required this.conversionInfo});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, conversionInfo.nav!);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: height * .5,
          width: width * .5,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 0.0),
                blurRadius: 10.0,
                spreadRadius: 10.0,
                color: Color(0xffc8afb5),
              )
            ],
            color: Color(0xff735b6a),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              Image.asset(
                'images/yarn8.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                conversionInfo.title!,
                style: const TextStyle(
                  fontSize: 22,
                  color: Color(0xffc0bfc7),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              AutoSizeText(
                conversionInfo.subTitle!,
                maxLines: 5,
                maxFontSize: 17,
                minFontSize: 16,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xfff6cefc),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
