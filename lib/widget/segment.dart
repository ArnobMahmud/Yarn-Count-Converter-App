import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/conversion_info.dart';

class SegmentChoice extends StatelessWidget {
  final ConversionInfo conversionInfo;

  const SegmentChoice({super.key, required this.conversionInfo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, conversionInfo.nav!);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 7.0,
              spreadRadius: 3.0,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              'images/yarn8.png',
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              conversionInfo.title!,
              style: GoogleFonts.ubuntu(
                fontSize: 20,
                color: const Color.fromARGB(255, 26, 24, 38),
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              conversionInfo.subTitle!,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: const Color(0xfff6cefc),
              ),
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
