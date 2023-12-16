import 'package:flutter/material.dart';
import '../db/count_info.dart';
import '../widget/info_card.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd1b399),
      appBar: AppBar(
        backgroundColor: const Color(0xffd1b399),
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff605467),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Transform(
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: const Text(
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
