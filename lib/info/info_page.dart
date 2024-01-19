import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../db/count_info.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd1b399),
      appBar: AppBar(
      scrolledUnderElevation: 0.0,
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
        title: const Text(
          'Yarn Count Measurement',
          style: TextStyle(
            color: Color(0xff4d4860),
            fontSize: 18,
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
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    color: Color.fromARGB(240, 74, 44, 42),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 0.0),
                        blurRadius: 5.0,
                        spreadRadius: 3.0,
                        color: Color(0xffb29882),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        countInfo[index].title!,
                        style: const TextStyle(
                          color: Color(0xffedd59e),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        countInfo[index].desc!,
                        style:  GoogleFonts.lato(
                          fontSize: 16,
                          color:const Color(0xffe2c28e),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}