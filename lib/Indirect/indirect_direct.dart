import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../db/info_ind_dir.dart';
import '../widget/segment.dart';

class IndirectDirectMethod extends StatefulWidget {
  const IndirectDirectMethod({super.key});

  @override
  State<IndirectDirectMethod> createState() => _IndirectDirectMethodState();
}

class _IndirectDirectMethodState extends State<IndirectDirectMethod> {
  @override
  Widget build(BuildContext context) {
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      backgroundColor: const Color(0xffebced5),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        elevation: 0,
        backgroundColor: const Color(0xffebced5),
        title: Transform(
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Text(
            'Indirect to Direct',
            style: GoogleFonts.lato(
              fontSize: 18,
              color: const Color(0xff5c4450),
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Color(0xffa58d7f),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
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
