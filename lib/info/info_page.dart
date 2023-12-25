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
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 0,
            height: 250,
            width: 300,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(117, 121, 142, 122),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(500),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            height: 250,
            width: 300,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(117, 121, 142, 122),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(500),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            height: 50,
            width: 50,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(117, 121, 142, 122),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            height: 50,
            width: 50,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(117, 121, 142, 122),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: countInfo.length,
            itemBuilder: (BuildContext context, int index) => InfoCard(
              countInfo: countInfo[index],
            ),
          ),
        ],
      ),
    );
  }
}
